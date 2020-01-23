(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2373 (str.substr "\x07" 2 2)))
 (= ?x2373 "")))
(check-sat)

(get-info :reason-unknown)



