(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2687 (str.replace "\n" "-1" "0")))
 (= ?x2687 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
