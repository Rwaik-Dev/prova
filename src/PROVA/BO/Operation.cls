Class PROVA.BO.Operation Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method RecupDadosCandidato(pRequest As PROVA.BO.Msg.Request, Output pResponse As PROVA.BO.Msg.Response)
{
    SET tSC = $$$OK
    SET pResponse = ##class(PROVA.BO.Msg.Response).%New()

    Try {
        SET query = "SELECT T1.* , T2.* FROM PROVA_DATA.Candidato T1, PROVA_DATA.Avaliacao T2 WHERE T1.CodigoCandidato = ? AND T2.CodigoCandidato = ? AND T2.NomeDisciplina = ?"
        $$$TRACE("Query gerada: " _query)
        
        SET vStatement = ##class(%SQL.Statement).%New()

        SET vStatus = vStatement.%Prepare(query)
        IF $$$ISERR(vStatus) RETURN vStatus

        SET vResultSet = vStatement.%Execute(pRequest.CodigoCandidato, pRequest.CodigoCandidato, pRequest.NomeDisciplina)

        IF vResultSet.%Next(){
            SET pResponse.Nome = vResultSet.%Get("Nome")
            SET pResponse.Tipo = vResultSet.%Get("Tipo")
            SET pResponse.NomeDisciplina = vResultSet.%Get("NomeDisciplina")
            SET pResponse.Nota = vResultSet.%Get("Nota")
        }

    }
    Catch ex {

        Set tSC=ex.AsStatus()
    }

    RETURN tSC
}

XData MessageMap
{
<MapItens>
     <MapItem MessageType="PROVA.BO.Msg.Request">
        <Method>RecupDadosCandidato</Method>
    </MapItem>
</MapItens>
}

}
