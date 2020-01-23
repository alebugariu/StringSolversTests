(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x561 (str.++ "0" "\n")))
 (= ?x561 "0\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
