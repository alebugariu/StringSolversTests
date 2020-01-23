(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x991 (str.substr "0" 0 2)))
 (= ?x991 "0")))
(check-sat)

(get-info :reason-unknown)



