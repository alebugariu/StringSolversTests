(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1529 (str.substr "\x07" 2 0)))
 (= ?x1529 "")))
(check-sat)

(get-info :reason-unknown)



