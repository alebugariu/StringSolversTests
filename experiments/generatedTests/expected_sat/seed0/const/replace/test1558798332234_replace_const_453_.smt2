(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2101 (str.replace "2" "" "-1")))
 (= ?x2101 "-12")))
(check-sat)

(get-info :reason-unknown)



