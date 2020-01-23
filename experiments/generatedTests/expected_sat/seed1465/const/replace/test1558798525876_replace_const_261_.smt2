(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2458 (str.replace "\n" "" "-1")))
 (= ?x2458 "-1\n")))
(check-sat)

(get-info :reason-unknown)



