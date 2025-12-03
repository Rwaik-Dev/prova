Class PROVA.DATA.Avaliacao Extends (%Persistent, %XML.Adaptor)
{

Property CodigoCandidato As %Integer [ SqlColumnNumber = 2 ];

Property NomeDisciplina As %String [ SqlColumnNumber = 3 ];

Property Tipo As %String [ SqlColumnNumber = 4 ];

Property Nota As %Integer [ SqlColumnNumber = 5 ];

Storage Default
{
<Data name="AvaliacaoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CodigoCandidato</Value>
</Value>
<Value name="3">
<Value>NomeDisciplina</Value>
</Value>
<Value name="4">
<Value>Tipo</Value>
</Value>
<Value name="5">
<Value>Nota</Value>
</Value>
</Data>
<DataLocation>^PROVA.DATA.AvaliacaoD</DataLocation>
<DefaultData>AvaliacaoDefaultData</DefaultData>
<IdLocation>^PROVA.DATA.AvaliacaoD</IdLocation>
<IndexLocation>^PROVA.DATA.AvaliacaoI</IndexLocation>
<StreamLocation>^PROVA.DATA.AvaliacaoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
