(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x330 (str.++ "a" "\x07")))
 (= ?x330 "a\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
