(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2755 (str.replace "\n" "2" "-1")))
 (= ?x2755 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
