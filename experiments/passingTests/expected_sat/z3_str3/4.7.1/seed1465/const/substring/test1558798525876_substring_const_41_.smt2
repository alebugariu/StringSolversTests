(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x820 (str.substr "\n" 0 2)))
 (= ?x820 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
