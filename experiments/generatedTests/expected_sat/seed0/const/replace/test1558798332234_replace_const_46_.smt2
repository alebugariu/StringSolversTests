(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1067 (str.replace "" "-1" "0")))
 (= ?x1067 "")))
(check-sat)

(get-info :reason-unknown)



