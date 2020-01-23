(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x644 (str.substr "2" (- 1) 2)))
 (= ?x644 "")))
(check-sat)

(get-info :reason-unknown)



