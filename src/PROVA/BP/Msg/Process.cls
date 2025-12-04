/// 
Class PROVA.BP.Msg.Process Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='PROVA.BP.Msg.Request' response='PROVA.BP.Msg.Response' height='2000' width='2000' >
<context>
<property name='Nota' type='%Integer' instantiate='0' deletewithcontext='0' />
</context>
<sequence xend='200' yend='1250' >
<call name='ChamaDadosCandidados' target='Dados Candidato BO' async='0' xpos='200' ypos='250' >
<request type='PROVA.BO.Msg.Request' >
<assign property="callrequest.CodigoCandidato" value="request.CodigoCandidato" action="set" />
<assign property="callrequest.NomeDisciplina" value="request.NomeDisciplina" action="set" />
</request>
<response type='PROVA.BO.Msg.Response' >
<assign property="response.NomeDisciplina" value="callresponse.NomeDisciplina" action="set" />
<assign property="context.Nota" value="callresponse.Nota" action="set" />
</response>
</call>
<sync name='AguardaDadosCandidatos' calls='ChamaDadosCandidados' type='all' xpos='200' ypos='350' />
<if name='Disciplina Teorica?' condition='response.NomeDisciplina = "Teorica"' xpos='200' ypos='450' xend='200' yend='1150' >
<true>
<trace name='Verifica Disciplina' value='"A disciplina e: "_request.NomeDisciplina' xpos='740' ypos='600' />
<if name='Nota &gt;= 6?' condition='context.Nota &gt;= 6' xpos='740' ypos='700' xend='740' yend='1050' >
<true>
<trace name='Verifica Nota' value='"A nota e: "_context.Nota' xpos='1010' ypos='850' />
<assign name="Resultado Aprovado" property="response.Resultado" value="&quot;APROVADO&quot;" action="set" xpos='1010' ypos='950' />
</true>
<false>
<trace name='Verifica Nota' value='"A nota e: "_context.Nota' xpos='740' ypos='850' />
<assign name="Resultado Reprovado" property="response.Resultado" value="&quot;REPROVADO&quot;" action="set" xpos='740' ypos='950' />
</false>
</if>
</true>
<false>
<trace name='Verifica Disciplina' value='"A disciplina e: "_request.NomeDisciplina' xpos='200' ypos='600' />
<if name='Nota &gt;= 7?' condition='context.Nota &gt;= 7' xpos='200' ypos='700' xend='200' yend='1050' >
<true>
<trace name='Verifica Nota' value='"A nota e: "_context.Nota' xpos='470' ypos='850' />
<assign name="Resultado Aprovado" property="response.Resultado" value="&quot;APROVADO&quot;" action="set" xpos='470' ypos='950' />
</true>
<false>
<trace name='Verifica Nota' value='"A nota e: "_context.Nota' xpos='200' ypos='850' />
<assign name="Resultado Reprovado" property="response.Resultado" value="&quot;REPROVADO&quot;" action="set" xpos='200' ypos='950' />
</false>
</if>
</false>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
