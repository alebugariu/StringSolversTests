(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1007 (str.indexof "a" "\n" (- 1))))
 (= ?x1007 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
