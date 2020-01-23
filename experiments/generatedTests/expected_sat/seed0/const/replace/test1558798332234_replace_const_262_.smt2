(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2470 (str.replace "\n" "" "0")))
 (= ?x2470 "0\n")))
(check-sat)

(get-info :reason-unknown)



