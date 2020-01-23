(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x99 (str.at "a" 2)))
 (= ?x99 "")))
(check-sat)

(get-info :reason-unknown)



