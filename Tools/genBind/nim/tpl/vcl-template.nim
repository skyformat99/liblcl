#[ 
   The code is automatically generated by the genBind tool. 
   Author: ying32
   https://github.com/ying32  
]#
##
##
import liblcl, types
##
##
##
type

{{/* 基类定义 */}}
{{range $el := .BaseObjects}}
##
  {{$el.ClassName}}*{{if isEmpty $el.BaseClassName}} {.inheritable.}{{end}} = ref object{{if not (isEmpty $el.BaseClassName)}} of {{$el.BaseClassName}}{{end}}
  {{if isEmpty $el.BaseClassName}}  FInstance: pointer{{end}}
{{end}}

{{/* 剩下的类定义 */}}
{{range $el := .Objects}}
{{if not (isBaseObj $el.ClassName)}}
##
  {{$el.ClassName}}* = ref object of {{$el.BaseClassName}}
{{end}}
{{end}}

{{/* 定义的一些函数 */}}
#---------------------------------------------------------------
##
proc CheckPtr*(obj: TObject): pointer =
  if obj != nil:
    return obj.FInstance
  else:
    return nil
##
## -------------------- 转换对象定义 ------------------------------------------
##
{{/* As<xxx>方法定义 */}}
{{range $el := .Objects}}
## {{/*这里添加一个强制转换的*/}}
proc As{{rmObjectT $el.ClassName}}*(obj: pointer): {{$el.ClassName}} =
  if obj == nil:
    return nil
  new(result)
  result.FInstance = obj
{{end}}
##


{{/*模板定义*/}}
{{define "getlastPs"}}{{if .LastIsReturn}}: {{$ps := lastParam .Params}}{{covType $ps.Type}}{{end}}{{end}}

{{/* 开始生成方法 */}}
{{range $el := .Objects}}
##
#------------------------- {{$el.ClassName}} -------------------------
{{$className := $el.ClassName}}
##
{{$classN := rmObjectT $className}}
{{range $mm := $el.Methods}}
{{if eq $mm.RealName "Create"}}
proc New{{$classN}}*({{range $idx, $ps := $mm.Params}}{{if gt $idx 0}}, {{end}}{{$ps.Name}}: {{covType2 $ps.Type}}{{end}}): {{$className}} =
   new(result)
   result.FInstance = {{$mm.Name}}({{range $idx, $ps := $mm.Params}}{{if gt $idx 0}}, {{end}}{{if isObject $ps.Type}}CheckPtr({{$ps.Name}}){{else}}{{$ps.Name}}{{end}}{{end}})
##
{{else if eq $mm.RealName "Free"}}
method Free*(this: {{$className}}){{if isBaseMethod $el.ClassName $mm.RealName}} {.base.}{{end}} =
  if this != nil:
     {{$mm.Name}}(this.FInstance)
     this.{{if ne $className "TObject"}}TObject.{{end}}FInstance = nil
##
{{/*基类，添加一个Instance方法*/}}
{{if eq $className "TObject"}}
method Instance*(this: TObject): pointer {.base.} =
  if this != nil:
    return this.FInstance
  else:
    return nil
{{end}}
##
{{else if $mm.IsStatic}}
##
proc {{$className}}Class*(): TClass =
  return {{$mm.Name}}()
##
{{else}}
{{if not $mm.IsStatic}}
{{/* 累了，不想弄，直接写好的得了 */}}
{{if eq $mm.RealName "TextRect2"}}
##
method TextRect2*(this: TCanvas, Rect: var TRect, Text: string, AOutStr: var string, TextFormat: TTextFormat): int32 {.base.} =
  var outstr: cstring
  result = Canvas_TextRect2(this.FInstance, Rect, Text, outstr, TextFormat)
  AOutStr = $outstr
{{else if eq $mm.RealName "CreateForm"}}
##
method CreateForm*[T](this: TApplication, x: var T) {.base.} =
    new(x)
    x.FInstance = Application_CreateForm(this.FInstance, false)
##
method CreateForm*(this: TApplication): TForm {.base.} =
  AsForm(Application_CreateForm(this.FInstance, false))
{{else}}
##
{{$isSetProp := isSetter $mm}}
{{$notProp := not (isProp $mm)}}
{{if $notProp}}method{{else}}proc{{end}} {{if $isSetProp}}`{{end}}{{getPropRealName $mm}}{{if $isSetProp}}=`{{end}}*(this: {{$className}}{{range $idx, $ps := $mm.Params}}{{if canOutParam $mm $idx}}{{if gt $idx 0}}, {{$ps.Name}}: {{if $ps.IsVar}}var {{end}}{{covType2 $ps.Type}}{{end}}{{end}}{{end}}){{if not (isEmpty $mm.Return)}}: {{covType2 $mm.Return}}{{else}}{{template "getlastPs" $mm}}{{end}}{{if $notProp}}{{if isBaseMethod $el.ClassName $mm.RealName}} {.base.}{{end}}{{else}} {.inline.}{{end}} =
  {{if not (isEmpty $mm.Return)}}return {{if isObject $mm.Return}}As{{rmObjectT $mm.Return}}({{end}}{{if eq $mm.Return "string"}}${{end}}{{end}}{{$mm.Name}}(this.FInstance{{range $idx, $ps := $mm.Params}}{{if canOutParam $mm $idx}}{{if gt $idx 0}}, {{if isObject $ps.Type}}CheckPtr({{$ps.Name}}){{else}}{{$ps.Name}}{{end}}{{end}}{{else}}{{if $mm.LastIsReturn}}, result{{end}}{{end}}{{end}}){{if and (not (isEmpty $mm.Return)) (isObject $mm.Return)}}){{end}}
{{end}}
{{end}}
{{end}}
{{end}}
{{end}}
##
##
#------------ global vars ----------------------
##
var
  Application* = AsApplication(Application_Instance())
  Screen* = AsScreen(Screen_Instance())
  Mouse* = AsMouse(Mouse_Instance())
  Clipboard* = AsClipboard(Clipboard_Instance())
  Printer* = AsPrinter(Printer_Instance())
