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
// <~---- meta.definition.global.hy
//             ^ meta.quoted-expression.hy
(eval greeting)                           

(print #[["You could not live with your own failure", said Thanos.]])
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.bracket-string.hy

(defn coin-toss []
  (if (> (random.random) 0.5)
// ^^ keyword.control.hy
//     ^ meta.expression.hy
//                       ^^^ constant.numeric.float.hy
    (print "tails")
    (print "heads"))

;; FIXME: AssertionError: True ∧ False should be False.
// ^^^^^^ keyword.codetag.hy
(assert (and True False) "True ∧ False should be False.")
//       ^^^ keyword.operator.hy
//           ^^^^ constant.language.boolean.hy

(type None)
//    ^^^^ constant.language.null.hy

(+ 1 1/2 0x1 0o7 1.-2j)
// <~~~- constant.numeric.int.hy
//   ^^^ constant.numeric.fraction.hy
//       ^^^ constant.numeric.hexadecimal.hy
//           ^^^ constant.numeric.octal.hy
//               ^^^^^ constant.numeric.complex.hy

;; Example from https://docs.hylang.org/en/stable/language/api.html#nonlocal.
(defn some-function []
  (setv x 0)
  (register-some-callback
    (fn [stuff]
      (nonlocal x)
//     ^^^^^^^^ storage.modifier.hy
      (setv x stuff))))

;; Adapted from https://tour.golang.org/moretypes/20.
(setv m [{"Bell Labs" [40.68433 -74.3967]} {"Google" [37.42202 -122.08408]}])
//      ^ meta.vector.hy
//                    ^ punctuation.section.vector.begin.hy
//                                      ^ punctuation.section.vector.end.hy
//       ^ punctuation.section.map.begin.hy
//                                       ^ punctuation.section.map.end.hy
