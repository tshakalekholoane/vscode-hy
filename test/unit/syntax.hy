// SYNTAX TEST "source.hy" 
;; Test(ed) with https://github.com/PanAeon/vscode-tmgrammar-test
// <-- comment.line.semicolon.hy
(setv greeting "Wus good?")
// <- punctuation.section.expression.begin.hy
// <~---- storage.control.hy 
//             ^^^^^^^^^^^ string.quoted.double.hy 
//                        ^ punctuation.section.expression.end.trailing.hy
(print greeting)
// <- punctuation.section.expression.begin.hy 
// <~----- entity.name.function.hy
//             ^ punctuation.section.expression.end.trailing.hy
