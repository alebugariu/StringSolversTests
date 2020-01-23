(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2013 (str.substr "" 0 2)))
 (= ?x2013 "")))
(check-sat)

(get-info :reason-unknown)



