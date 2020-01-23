(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1197 (str.indexof "0" "\n" 0)))
 (= ?x1197 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
