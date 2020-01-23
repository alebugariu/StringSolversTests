(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1655 (str.replace "a" "" "a")))
 (= ?x1655 "aa")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
