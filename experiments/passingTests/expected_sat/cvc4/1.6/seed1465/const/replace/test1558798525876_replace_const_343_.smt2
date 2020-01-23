(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2158 (str.replace "-1" "a" "2")))
 (= ?x2158 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
