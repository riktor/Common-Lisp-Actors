(defactor fact ((temp 1)) (n cust) 
	   (if (equal 1 n) 
	       (progn (send cust (* temp 1))
                      (setf temp 1) next)
	       (progn (setf temp (* n temp))
                      (send self (- n 1) cust) next)))