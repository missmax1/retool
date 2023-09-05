const annotatedText = {{ annotatedText1.tags }}
let itemSelected = annotatedText[{{ annotatedText1.tags.length }} - 1]
return {{ annotatedText1.text }}.substring(itemSelected.start, itemSelected.end)