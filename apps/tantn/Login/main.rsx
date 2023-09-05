<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <AuthLogin
      id="authLogin1"
      authResourceDisplayName="Google login"
      authResourceName="f056037b-05f1-4932-9075-e056759a3ad8"
      authType="oauth2"
      hidden="true"
      label="Google Login"
    />
    <AuthLogin
      id="authLogin2"
      authResourceDisplayName="Microsoft Login"
      authResourceName="cfb7f8d2-27ef-4da7-b1f7-8579f8b1d7bd"
      authType="oauth2"
      hidden="true"
      label="Microsoft Login"
    />
    <Text
      id="text1"
      value="## AMOUNT :{{amount.value}}"
      verticalAlign="center"
    />
    <Button id="button1" styleVariant="solid" text="Get Amount">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAmountAPI"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [{ value: "{{GetAmountAPI.data.balances[0].amount}}" }],
        }}
        pluginId="amount"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
