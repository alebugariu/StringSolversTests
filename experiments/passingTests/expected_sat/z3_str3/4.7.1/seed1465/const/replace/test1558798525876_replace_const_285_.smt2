(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2591 (str.replace "\n" "\x07" "-1")))
 (= ?x2591 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
