(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2680 (str.indexof "0" "0" 0)))
 (= ?x2680 0)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
