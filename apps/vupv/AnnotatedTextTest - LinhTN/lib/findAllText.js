const itemsSelected = {{ itemsHighlight.value }}
const annotatedText = {{ annotatedText1.text }}
const items = []

itemsSelected.forEach((item) => {
  let text = annotatedText.substring(item.start, item.end)

  const isDuplicateLabel = items.filter(value => {
    return value.label.includes(item.label)
  })

  if(isDuplicateLabel.length > 0) {
    item.label = `${item.label}(${isDuplicateLabel.length})`
  }
  
  items.push({text: text, label: item.label})
})

return items