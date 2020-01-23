(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2446 (str.replace "\n" "" "\n")))
 (= ?x2446 "\n\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
