(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2481 (str.replace "2" "\x07" "\x07")))
 (= ?x2481 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
