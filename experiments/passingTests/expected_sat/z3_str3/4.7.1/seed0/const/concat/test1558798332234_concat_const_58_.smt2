(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x603 (str.++ "2" "a")))
 (= ?x603 "2a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
