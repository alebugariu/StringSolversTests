(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2586 (str.replace "0" "0" "\n")))
 (= ?x2586 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
