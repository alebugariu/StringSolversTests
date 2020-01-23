(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x924 (str.substr "-1" 2 0)))
 (= ?x924 "")))
(check-sat)

(get-info :reason-unknown)



