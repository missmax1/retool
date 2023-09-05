<GlobalFunctions>
  <GRPCQuery
    id="GetAmountAPI"
    methodName="getBalance"
    query={include("./lib/GetAmountAPI.proto", "string")}
    resourceDisplayName="Tan test grpc"
    resourceName="882833cc-aac3-4f87-b453-08bed1a7d57f"
    resourceTypeOverride=""
    runWhenPageLoads={true}
    serviceName="com.example.grpcameria.BankService"
  />
  <State id="amount" value="0" />
  <State id="variable2" value="" />
  <GRPCQuery
    id="grpc_test2"
    methodName="CreateContract"
    query={include("./lib/grpc_test2.proto", "string")}
    resourceDisplayName="Tan test grpc"
    resourceName="882833cc-aac3-4f87-b453-08bed1a7d57f"
    serviceName="com.example.grpcameria.HighLightTextService"
  />
</GlobalFunctions>
