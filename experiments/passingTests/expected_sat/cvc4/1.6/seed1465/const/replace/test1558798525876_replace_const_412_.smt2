(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2282 (str.replace "0" "\x07" "\n")))
 (= ?x2282 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
