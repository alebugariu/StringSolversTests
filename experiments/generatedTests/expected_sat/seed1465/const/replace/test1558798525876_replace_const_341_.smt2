(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2554 (str.replace "-1" "a" "-1")))
 (= ?x2554 "-1")))
(check-sat)

(get-info :reason-unknown)



