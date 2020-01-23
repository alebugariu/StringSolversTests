(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2776 (str.substr "\x07" 0 (- 1))))
 (= ?x2776 "")))
(check-sat)

(get-info :reason-unknown)



