(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2280 (str.substr "\x07" 2 2)))
 (= ?x2280 "")))
(check-sat)

(get-info :reason-unknown)



