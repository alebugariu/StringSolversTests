(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2422 (str.replace "\n" "" "a")))
 (= ?x2422 "a\n")))
(check-sat)

(get-info :reason-unknown)



