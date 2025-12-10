(defun ascii-to-binary ()
  (format t "Enter text: ")
  (force-output)
  (let ((text (read-line)))
    (loop for char across text
          for ascii = (char-code char)
          do (format t "~8,'0b " ascii))
    (terpri)
    (values)))
