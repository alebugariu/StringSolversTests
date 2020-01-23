(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x224 (str.indexof "-1" "2" 0)))
 (= ?x224 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
