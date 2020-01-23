(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x210 (str.replace "2" "-1" "a")))
 (= ?x210 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
