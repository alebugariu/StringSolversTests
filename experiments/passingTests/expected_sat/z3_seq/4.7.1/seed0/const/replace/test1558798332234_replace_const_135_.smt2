(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1715 (str.replace "a" "" "2")))
 (= ?x1715 "2a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
