(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2734 (str.replace "\n" "2" "")))
 (= ?x2734 "\n")))
(check-sat)

(get-info :reason-unknown)



