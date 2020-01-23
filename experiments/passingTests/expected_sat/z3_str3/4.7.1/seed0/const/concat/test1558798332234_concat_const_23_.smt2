(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x358 (str.++ "a" "2")))
 (= ?x358 "a2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
