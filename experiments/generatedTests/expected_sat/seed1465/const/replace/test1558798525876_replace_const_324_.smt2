(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2823 (str.replace "-1" "" "\n")))
 (= ?x2823 "\n-1")))
(check-sat)

(get-info :reason-unknown)



