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
</GlobalFunctions>
