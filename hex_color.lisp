(defun hex-color ()
  (format nil "#~6,'0X" (random (expt 16 6))))

(print (hex-color))
