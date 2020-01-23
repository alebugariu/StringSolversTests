(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1055 (str.replace "" "-1" "\n")))
 (= ?x1055 "")))
(check-sat)

(get-info :reason-unknown)



