(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2259 (str.replace "-1" "-1" "a")))
 (= ?x2259 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
