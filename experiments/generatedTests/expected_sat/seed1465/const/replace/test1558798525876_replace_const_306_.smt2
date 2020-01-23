(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2707 (str.replace "\n" "0" "a")))
 (= ?x2707 "\n")))
(check-sat)

(get-info :reason-unknown)



