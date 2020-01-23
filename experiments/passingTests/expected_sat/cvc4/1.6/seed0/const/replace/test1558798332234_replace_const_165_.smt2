(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1889 (str.replace "a" "\n" "-1")))
 (= ?x1889 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
