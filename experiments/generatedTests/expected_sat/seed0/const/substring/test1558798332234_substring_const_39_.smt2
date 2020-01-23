(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1361 (str.substr "\n" 0 (- 1))))
 (= ?x1361 "")))
(check-sat)

(get-info :reason-unknown)



