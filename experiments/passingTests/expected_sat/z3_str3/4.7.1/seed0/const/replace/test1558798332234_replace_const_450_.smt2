(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2751 (str.replace "2" "" "a")))
 (= ?x2751 "a2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
