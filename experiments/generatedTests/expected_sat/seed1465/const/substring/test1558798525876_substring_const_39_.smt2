(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2560 (str.substr "\n" 0 (- 1))))
 (= ?x2560 "")))
(check-sat)

(get-info :reason-unknown)



