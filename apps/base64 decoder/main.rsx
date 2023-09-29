<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" paddingType="normal" type="main">
    <Text
      id="text1"
      style={{ ordered: [] }}
      value="# Base64 Decode
#### Enter your base64 encoded text below"
      verticalAlign="center"
    />
    <ButtonWidget
      id="switchApp"
      buttonType="internal-url"
      color="#555555"
      events={[
        {
          ordered: [
            { event: "click" },
            { method: "openApp" },
            { type: "util" },
            { pluginId: "" },
            { waitType: "debounce" },
            { waitMs: "0" },
            {
              params: {
                ordered: [
                  { uuid: "91048520-a3b6-11eb-b48c-f3c3f21d2ac6" },
                  {
                    options: {
                      ordered: [
                        { queryParams: null },
                        { hashParams: null },
                        { newTab: false },
                      ],
                    },
                  },
                ],
              },
            },
          ],
        },
      ]}
      internalUrlPath="91048520-a3b6-11eb-b48c-f3c3f21d2ac6"
      style={{ ordered: [{ "accent-background": "#555555" }] }}
      value="Switch to encode"
    />
    <TextInputWidget
      id="base64"
      events={[
        {
          ordered: [
            { event: "blur" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "decode" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      label="Base64"
      onBlur="decode"
      type="text"
    />
    <ButtonWidget
      id="button1"
      action="decode"
      color="#3c92dc"
      disabled="{{decode.isFetching}}"
      events={[
        {
          ordered: [
            { event: "click" },
            { method: "trigger" },
            { type: "datasource" },
            { pluginId: "decode" },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      style={{ ordered: [] }}
      value="Decode"
    />
    <TextInputWidget id="decoded" label="Decoded text" type="text" />
  </Frame>
</App>
