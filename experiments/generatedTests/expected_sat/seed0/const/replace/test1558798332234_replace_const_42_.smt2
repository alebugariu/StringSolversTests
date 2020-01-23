(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1043 (str.replace "" "-1" "a")))
 (= ?x1043 "")))
(check-sat)

(get-info :reason-unknown)



