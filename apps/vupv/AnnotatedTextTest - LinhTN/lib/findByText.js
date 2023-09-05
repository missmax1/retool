const keyword = textInputFind.value
const regex = new RegExp(keyword, "g")
const annotatedText = annotatedText1.text
let tagsTmp = annotatedText1.tags ?? []
let match;

while ((match = regex.exec(annotatedText)) !== null) {
  tagsTmp.push({
    start: match.index,
    end: match.index + keyword.length,
    label: 'Company name',
    id: tagsTmp.length + 1
  })
}
annotatedText1.scrollIntoView({ block: 'start', 'behavior': 'smooth' })
localStorage.setValue('items_highlight', tagsTmp)