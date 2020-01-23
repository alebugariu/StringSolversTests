(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2832 (str.indexof "a" "2" (- 1))))
 (= ?x2832 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
