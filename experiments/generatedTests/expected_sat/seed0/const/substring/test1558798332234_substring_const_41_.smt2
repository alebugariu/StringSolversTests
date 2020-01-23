(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x95 (str.substr "\n" 0 2)))
 (= ?x95 "\n")))
(check-sat)

(get-info :reason-unknown)



