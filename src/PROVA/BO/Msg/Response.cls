Class PROVA.BO.Msg.Response Extends Ens.Response
{

Property Nome As %String;

Property Tipo As %String;

Property NomeDisciplina As %String;

Property Nota As %Integer;

Storage Default
{
<Data name="ResponseDefaultData">
<Subscript>"Response"</Subscript>
<Value name="1">
<Value>Nome</Value>
</Value>
<Value name="2">
<Value>Tipo</Value>
</Value>
<Value name="3">
<Value>NomeDisciplina</Value>
</Value>
<Value name="4">
<Value>Nota</Value>
</Value>
</Data>
<DefaultData>ResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
