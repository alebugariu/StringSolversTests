(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1013 (str.replace "" "\n" "0")))
 (= ?x1013 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
