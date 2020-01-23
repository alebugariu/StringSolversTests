(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x631 (str.++ "2" "0")))
 (= ?x631 "20")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
