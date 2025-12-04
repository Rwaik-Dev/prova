Class PROVA.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="PROVA.Production" TestingEnabled="true">
 <ActorPoolSize>2</ActorPoolSize>
   <Item Name="Dados Candidato BO" Category="" ClassName="PROVA.BO.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="Avalia Candidato BP" Category="" ClassName="PROVA.BP.Msg.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
</Production>
}

}
