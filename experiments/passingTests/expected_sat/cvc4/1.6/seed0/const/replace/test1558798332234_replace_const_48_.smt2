(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1084 (str.replace "" "0" "")))
 (= ?x1084 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
