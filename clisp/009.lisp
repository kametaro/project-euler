; a + b + c = 1000
; a 1,2,3,4
; b 1000 - a
; b 1000 - a - b
; c 0

(defun pro9 ()
  (do ((a 1 (1+ a)))
      ((= a 1000))
    (do ((b (1+ a) (1+ b)))
	((= b 1000))
      (do ((c (1+ b) (1+ c)))
	  ((= c 1000))
	(if (and (= (+ (* a a) (* b b)) (* c c)) (= (+ a b c) 1000))
	    (return-from pro9 (list a b c (* a b c))))))))