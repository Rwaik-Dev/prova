Class PROVA.DATA.Candidato Extends (%Persistent, %XML.Adaptor)
{

Property Nome As %String [ SqlColumnNumber = 2 ];

Property Idade As %Integer [ SqlColumnNumber = 3 ];

Property Sexo As %String [ SqlColumnNumber = 4 ];

Property CodigoCandidato As %Integer [ SqlColumnNumber = 5 ];

Storage Default
{
<Data name="CandidatoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Idade</Value>
</Value>
<Value name="4">
<Value>Sexo</Value>
</Value>
<Value name="5">
<Value>CodigoCandidato</Value>
</Value>
</Data>
<DataLocation>^PROVA.DATA.CandidatoD</DataLocation>
<DefaultData>CandidatoDefaultData</DefaultData>
<IdLocation>^PROVA.DATA.CandidatoD</IdLocation>
<IndexLocation>^PROVA.DATA.CandidatoI</IndexLocation>
<StreamLocation>^PROVA.DATA.CandidatoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
