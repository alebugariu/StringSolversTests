(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x582 (str.++ "0" "2")))
 (= ?x582 "02")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
