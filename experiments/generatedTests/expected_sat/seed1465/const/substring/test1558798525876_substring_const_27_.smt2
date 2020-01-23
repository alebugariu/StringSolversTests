(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1467 (str.substr "\x07" (- 1) (- 1))))
 (= ?x1467 "")))
(check-sat)

(get-info :reason-unknown)



