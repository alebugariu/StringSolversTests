(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2227 (str.replace "-1" "\n" "a")))
 (= ?x2227 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
