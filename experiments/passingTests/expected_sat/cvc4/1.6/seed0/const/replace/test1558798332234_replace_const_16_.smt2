(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x868 (str.replace "" "a" "")))
 (= ?x868 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
