(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x103 (str.substr "-1" 2 0)))
 (= ?x103 "")))
(check-sat)

(get-info :reason-unknown)



