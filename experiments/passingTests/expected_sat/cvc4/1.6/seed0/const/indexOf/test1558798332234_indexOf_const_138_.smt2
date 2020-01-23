(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x972 (str.indexof "-1" "0" (- 1))))
 (= ?x972 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
