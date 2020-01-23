(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1138 (str.replace "" "2" "")))
 (= ?x1138 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
