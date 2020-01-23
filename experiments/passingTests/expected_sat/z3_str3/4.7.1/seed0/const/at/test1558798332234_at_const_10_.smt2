(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x110 (str.at "\x07" 0)))
 (= ?x110 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
