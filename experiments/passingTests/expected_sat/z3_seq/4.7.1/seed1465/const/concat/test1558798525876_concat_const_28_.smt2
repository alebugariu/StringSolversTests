(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x393 (str.++ "\x07" "\n")))
 (= ?x393 "\x07\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
