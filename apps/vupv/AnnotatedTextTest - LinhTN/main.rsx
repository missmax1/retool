<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Button id="button1" styleVariant="solid" text="Init data">
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            { key: "items_highlight" },
            {
              newValue:
                '{{ [{start: 0, end: 1, label:"Company name", id:0}, {start: 10, end: 23, label:"Party A", id:1}, {start: 52, end: 54, label:"Party B", id:1}] }}',
            },
          ],
        }}
        pluginId=""
        type="localStorage"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextAnnotation
      id="annotatedText1"
      events={[
        {
          ordered: [
            { event: "change" },
            { type: "localStorage" },
            { method: "setValue" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  { key: "items_highlight" },
                  { newValue: "{{ annotatedText1.tags }}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "change" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "itemsHighlight" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    value:
                      "{{ [annotatedText1.tags[annotatedText1.tags.length - 1]] }}",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      labels={'{{ ["Company name", "Party A", "Party B"] }}'}
      tags="{{ itemsHighlight.value }}"
    />
    <ListView id="listView1" instances="{{ annotatedText1.tags.length }}">
      <TextInput
        id="textInput2"
        label="{{ findAllText.value[i].label }}"
        labelPosition="top"
        placeholder="Enter value"
        value="{{ findAllText.value[i].text }}"
      />
    </ListView>
    <TextInput
      id="textInputFind"
      label="Tag"
      placeholder="Enter value"
      value="{{ findTextByIndexStartAndEnd.value }}"
    />
    <Button id="btnFind" styleVariant="solid" text="Find">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="findByText"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <EditableText
      id="editableText1"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      placeholder="Enter value"
    />
    <TextArea
      id="textArea1"
      autoResize={true}
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <DropdownButton
      id="dropdownButton1"
      itemMode="static"
      overlayMaxHeight={375}
      style={{
        ordered: [
          { border: "rgba(255, 255, 255, 0)" },
          { hoverBackground: "rgba(255, 3, 3, 0.1)" },
        ],
      }}
      styleVariant="outline"
      text="..."
    >
      <Option id="fce5c" label="Option 1" />
      <Option id="1dc8a" label="Option 2" />
      <Option id="11857" label="Option 3" />
    </DropdownButton>
    <Text
      id="text1"
      value="test

linh

aaa

"
      verticalAlign="center"
    />
    <CustomComponent
      id="customComponent1"
      iframeCode={
        '\n<style>\n  \n  html { font-family: \'Inter\', sans-serif; }\n  @supports (font-variation-settings: normal) {\n    html { font-family: \'Inter var\', sans-serif; }\n  }\n\n  * {\n    font-family: \'Inter\', sans-serif;\n  }\n\n  body {\n    margin: 0;\n  }\n\n  #react {\n    height: 100%;\n    width: 100%;\n  }\n\n  .card {\n    min-width: 0;\n    min-height: 120px;\n    display: flex;\n    flex-direction: column;\n    justify-content: center;\n    padding: 12px 24px;\n    border-radius: 4px;\n    border: 1px solid #cccccc;\n    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);\n    background-color: #ffffff;\n  }\n\n  .title-container {\n    display: flex;\n    justify-content: space-between;\n    align-items: center;\n    line-height: 24px;\n  }\n\n  .title {\n    font-size: 18px;\n    font-weight: 700;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n  }\n\n  .docs-link {\n    font-size: 12px;\n    font-weight: 500;\n    color: #b062bc;\n    text-decoration: none;\n  }\n\n  .docs-link:hover {\n    color: #9846a4;\n  }\n\n  .content {\n    margin-top: 4px;\n    font-size: 12px;\n    line-height: 18px;\n    font-weight: 400;\n    color: #777777;\n  }\n\n  .button-container {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n    margin-top: 12px;\n  }\n\n  .button {\n    border: none;\n    border-radius: 4px;\n    padding: 8px 16px;\n    font-weight: 500;\n    font-size: 12px;\n    cursor: pointer;\n    outline: none;\n    appearance: none;\n    user-select: auto;\n  }\n\n  .button--main {\n    background-color: #b062bc;\n    color: #ffffff;\n  }\n\n  .button--main:hover {\n    background-color: #9846a4;\n  }\n\n  .button--secondary {\n    color: #b062bc;\n    background-color: white;\n    border: 1px solid #b062bc;\n  }\n\n  .button--secondary:hover {\n    color: #9846a4;\n    border: 1px solid #9846a4;\n  }\n</style>\n\n<!-- You can add any HTML/CSS/JS here. UMD versions are required.\nKeep in mind that Custom Components are sensitive to bundle sizes, so try using a\ncustom implementation when possible. -->\n<script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script>\n<script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>\n\n<div id="react"></div>\n\n<script type="text/babel">\n  const MyCustomComponent = ({ triggerQuery, model, modelUpdate }) => (\n    <div className="card">\n      <div className="title-container">\n        <div className="title">Custom 23434component</div>\n        <a href="https://docs.retool.com/docs/custom-components" className="docs-link">View docs</a>\n      </div>\n      <div className="content">\n        {/* The text below is dynamic and specified by the model. */}\n        {model.displayText}\n      </div>\n      <div className="button-container">\n        {/* This button fires a dynamic query (specified in the model) when clicked. */}\n        <button\n          className="button button--main"\n          onClick={() => triggerQuery(model.queryToTrigger)}\n        >\n          Trigger query\n        </button>\n\n        {/* This button updates the model when clicked. */}\n        <button\n          className="button button--secondary"\n          onClick={() => modelUpdate({ displayText: \'The body of this text references "model.displayText", which just changed!\' })}\n        >\n          Update model\n        </button>\n      </div>\n    </div>\n  )\n\n  // This is the entrypoint for the React component.\n  const ConnectedComponent = Retool.connectReactComponent(MyCustomComponent)\n  const container = document.getElementById(\'react\')\n  const root = ReactDOM.createRoot(container)\n  root.render(<ConnectedComponent />)\n</script>\n'
      }
      model=""
    />
  </Frame>
</App>
