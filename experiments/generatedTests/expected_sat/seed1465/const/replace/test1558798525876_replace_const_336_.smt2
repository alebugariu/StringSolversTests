(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1068 (str.replace "-1" "a" "")))
 (= ?x1068 "-1")))
(check-sat)

(get-info :reason-unknown)



