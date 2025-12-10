(defun binary-to-ascii ()
  (format t "Enter binary (8-bit groups separated by spaces): ")
  (force-output)
  (let* ((input (read-line))
         (binary-strings (split-sequence:split-sequence #\Space input)))
    (loop for bin-str in binary-strings
          for decimal = (parse-integer bin-str :radix 2)
          for char = (code-char decimal)
          do (format t "~a" char))
    (terpri)
    (values)))

;; if you don't have split-sequence

(defun binary-to-ascii-simple ()
  (format t "Enter binary (8-bit groups separated by spaces): ")
  (force-output)
  (let ((input (read-line)))
    (loop with start = 0
          for space-pos = (position #\Space input :start start)
          for bin-str = (subseq input start (or space-pos (length input)))
          while (< start (length input))
          do (let ((decimal (parse-integer bin-str :radix 2)))
               (format t "~a" (code-char decimal))
               (setf start (if space-pos (1+ space-pos) (length input)))))
    (terpri)
    (values)))
