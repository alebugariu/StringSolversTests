(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x13 (str.replace "0" "-1" "\x07")))
 (= ?x13 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
