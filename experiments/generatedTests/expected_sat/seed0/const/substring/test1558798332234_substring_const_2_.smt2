(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1188 (str.substr "" (- 1) 2)))
 (= ?x1188 "")))
(check-sat)

(get-info :reason-unknown)



