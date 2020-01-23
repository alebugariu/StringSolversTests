(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1085 (str.replace "0" "a" "")))
 (= ?x1085 "0")))
(check-sat)

(get-info :reason-unknown)



