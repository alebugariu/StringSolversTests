(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1109 (str.replace "" "0" "\n")))
 (= ?x1109 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
