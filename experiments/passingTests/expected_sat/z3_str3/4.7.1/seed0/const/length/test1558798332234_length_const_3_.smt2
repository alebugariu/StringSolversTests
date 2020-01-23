(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x373 (str.len "\x07")))
 (= ?x373 1)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
