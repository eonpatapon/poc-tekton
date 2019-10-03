// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/util/intstr

package intstr

// IntOrString is a type that can hold an int32 or a string.  When used in
// JSON or YAML marshalling and unmarshalling, it produces or consumes the
// inner type.  This allows you to have, for example, a JSON field that can
// accept a name or number.
// TODO: Rename to Int32OrString
//
// +protobuf=true
// +protobuf.options.(gogoproto.goproto_stringer)=false
// +k8s:openapi-gen=true
IntOrString :: {
	Type:   Type   @protobuf(1,varint,opt,name=type,casttype=Type)
	IntVal: int32  @protobuf(2,varint,opt,name=intVal)
	StrVal: string @protobuf(3,bytes,opt,name=strVal)
}

// Type represents the stored type of IntOrString.
Type :: int // enumType

enumType ::
	Int |
	String

Int ::    Type & 0
String :: Type & 1