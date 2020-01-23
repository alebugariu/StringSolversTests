(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2482 (str.replace "\n" "" "2")))
 (= ?x2482 "2\n")))
(check-sat)

(get-info :reason-unknown)



