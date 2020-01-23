(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1061 (str.replace "" "-1" "-1")))
 (= ?x1061 "")))
(check-sat)

(get-info :reason-unknown)



