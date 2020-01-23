(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x442 (str.++ "\n" "\x07")))
 (= ?x442 "\n\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
