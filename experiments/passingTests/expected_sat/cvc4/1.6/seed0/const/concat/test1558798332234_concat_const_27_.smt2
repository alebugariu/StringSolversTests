(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x386 (str.++ "\x07" "\x07")))
 (= ?x386 "\x07\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
