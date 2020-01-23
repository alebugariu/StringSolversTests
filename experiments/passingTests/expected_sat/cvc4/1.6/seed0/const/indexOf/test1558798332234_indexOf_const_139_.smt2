(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x769 (str.indexof "-1" "0" 0)))
 (= ?x769 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
