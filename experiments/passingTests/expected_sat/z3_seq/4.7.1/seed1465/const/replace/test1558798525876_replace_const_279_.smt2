(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2565 (str.replace "\n" "a" "2")))
 (= ?x2565 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
