Class PROVA.BO.Msg.Request Extends Ens.Request
{

Property CodigoCandidato As %Integer;

Property NomeDisciplina As %String;

Storage Default
{
<Data name="RequestDefaultData">
<Subscript>"Request"</Subscript>
<Value name="1">
<Value>CodigoCandidato</Value>
</Value>
<Value name="2">
<Value>NomeDisciplina</Value>
</Value>
</Data>
<DefaultData>RequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
