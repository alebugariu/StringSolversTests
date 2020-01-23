(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1524 (str.replace "2" "0" "\n")))
 (= ?x1524 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
