(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2079 (str.indexof "\n" "\x07" (- 1))))
 (= ?x2079 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
