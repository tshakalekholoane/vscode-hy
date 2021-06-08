// SYNTAX TEST "source.hy"
#!/usr/bin/env hy
// <-- punctuation.definition.comment.shebang.hy
;;;; Unit tests for the Hy Language Basics Visual Studio Code extension
;;;; using https://github.com/PanAeon/vscode-tmgrammar-test.
// ^ comment.line.semicolon.hy
(import random)
// <- punctuation.section.expression.begin.hy
// <~------ keyword.other.hy
//            ^ punctuation.section.expression.end.trailing.hy
(setv greeting '(print "Hello, World!"))    
//             ^ meta.quoted-expression.hy
(eval greeting)                           

(print #[["You could not live with your own failure", said Thanos.]])
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.bracket-string.hy
(defn coin-toss []
  (if (> (random.random) 0.5)
//                       ^^^ constant.numeric.float.hy
//     ^ meta.expression.hy
    (print "tails")
    (print "heads"))

;; FIXME: AssertionError: True ∧ False should be False.
// ^^^^^^ keyword.codetag.hy
(assert (and True False) "True ∧ False should be False.")
//       ^^^ keyword.operator.hy
