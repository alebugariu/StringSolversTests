(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1284 (str.replace "-1" "" "2")))
 (= ?x1284 "2-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
