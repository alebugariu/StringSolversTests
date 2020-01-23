(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1690 (str.substr "\x07" 0 0)))
 (= ?x1690 "")))
(check-sat)

(get-info :reason-unknown)



