(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1030 (str.replace "" "-1" "")))
 (= ?x1030 "")))
(check-sat)

(get-info :reason-unknown)



