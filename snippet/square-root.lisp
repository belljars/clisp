(defun square-root (n &optional (guess 1.0) (epsilon 0.00001))
  (if (<= (abs (- (* guess guess) n)) epsilon)
      guess
      (square-root n (/ (+ guess (/ n guess)) 2.0) epsilon)))
