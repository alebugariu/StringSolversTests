(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2557 (str.replace "\n" "a" "-1")))
 (= ?x2557 "\n")))
(check-sat)

(get-info :reason-unknown)



