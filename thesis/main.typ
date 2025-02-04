#import "@preview/ilm:1.4.0": *

#set text(lang: "en")

#set document(author: "David Jäggli")

#show: ilm.with(
  title: [LibMatch Binary Ninja Plugin],
  author: "David Jäggli",
  date: datetime(year: 2024, month: 12, day: 20),
  date-format: "[day padding:zero]. [month repr:long] [year repr:full]",
  preface: [#include "chapters/I_second_page.typ"],
  table-of-contents: none,
  figure-index: (enabled: false),
  table-index: (enabled: false),
  listing-index: (enabled: true),
  appendix: (enabled: false)
)

#counter(page).update(1)
#set heading(numbering: "I.")
#set page(
  margin: (top: 3.75cm, left: 3.35cm, right: 3.35cm, bottom: 2.88cm),
  footer: context [
    David Jäggli
    #h(1fr)
    #counter(page).display("i")
  ],
  header: "Hochschule Luzern"
)

#include "chapters/II_Abstract.typ"

= Table of Contents
#outline(
  title: none,
  indent: true,
  depth: 2
)


#set page(
  margin: (top: 2.75cm, left: 2.5cm, right: 2.5cm, bottom: 2.75cm),
  header: [
    BAA
    #h(1fr)
    Hochschule Luzern
  ],
  footer: context [
    David Jäggli
    #h(1fr)
    #counter(page).display("1")
  ],
)
#counter(page).update(1)




/*
Example:

#figure(
  image("../img/backlogs_user_stories.svg", width: auto),
  caption: [ Backlogs and user stories ]
)
*/


#counter(heading).update(0)
#set heading(numbering: "1.1.1")

#include "chapters/1_Problem_Question_Vision.typ"

#include "chapters/2_State_of_Research.typ"

#include "chapters/3_Ideas_and_Concepts.typ"

#include "chapters/4_Methods.typ"

#include "chapters/5_Implementation.typ"

#include "chapters/6_Evaluation_and_Validation.typ"

#include "chapters/7_Further_Ideas.typ"


#counter(heading).update(0)
#set heading(numbering: "A.1.1.")
#include "chapters/A_Appendix.typ"

#set text(font: "Fira Sans")

#set heading(numbering: none)
= List of Abbreviations
#figure(
  table(
    columns: (auto, 1fr),
    align: left,
    
    table.header[Abbreviation][Definition],
    [CPU], [Central Processing Unit],
    [ASCII], [American Standard Code for Information Interchange],  
    [GDB], [GNU Project Debugger], 
    [LLM], [Large Language Model], 
    [IO], [input/output],
    [SSH], [Secure Shell], 
    //[], [], 
  ), 
  caption: [List of Abbreviations]
)

// #bibliography("AArch64_encoder.bib", title: "References", style: "american-psychological-association")


#outline(
  title: "Index of Figures",
  target: figure.where(kind: image)
)

#outline(
  title: "Index of Tables",
  target: figure.where(kind: table)
)





