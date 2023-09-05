<GlobalFunctions>
  <State
    id="itemsHighlight"
    value="{{ localStorage.values.items_highlight }}"
  />
  <Function
    id="findTextByIndexStartAndEnd"
    funcBody={include("./lib/findTextByIndexStartAndEnd.js", "string")}
  />
  <JavascriptQuery
    id="findByText"
    query={include("./lib/findByText.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Function
    id="findAllText"
    funcBody={include("./lib/findAllText.js", "string")}
  />
  <GRPCQuery
    id="query2"
    methodName="GetContractInfo"
    query={include("./lib/query2.proto", "string")}
    resourceDisplayName="grpc"
    resourceName="8af851b9-8352-4f20-b128-f85ed0c9dbc9"
    serviceName="com.example.grpcameria.HighLightTextService"
  />
</GlobalFunctions>
