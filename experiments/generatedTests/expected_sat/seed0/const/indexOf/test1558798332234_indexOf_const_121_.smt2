(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2093 (str.indexof "-1" "" 0)))
 (= ?x2093 0)))
(check-sat)

(get-info :reason-unknown)



