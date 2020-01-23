(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x857 (str.indexof "-1" "\n" 2)))
 (= ?x857 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
