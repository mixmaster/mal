(defpackage :mal
  (:use :common-lisp)
  (:export :main))

(in-package :mal)

(defun readline ()
  (format *standard-output* "user> ")
  (force-output *standard-output*)
  (read-line *standard-input* nil))

(defun printline (string)
  (when string
    (write-line string)
    (force-output *standard-output*)))

(defun mal-read (string)
  string)

(defun mal-eval (ast)
  ast)

(defun mal-print (expression)
  expression)

(defun mal-rep (input)
  (mal-print (mal-eval (mal-read input))))

(defun main ()
  (loop do
    (let ((input (readline)))
      (if input
        (printline (mal-rep input))
        (return)))))
