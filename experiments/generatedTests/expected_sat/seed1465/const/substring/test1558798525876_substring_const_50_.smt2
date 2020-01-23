(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2149 (str.substr "-1" 0 2)))
 (= ?x2149 "-1")))
(check-sat)

(get-info :reason-unknown)



