(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1939 (str.replace "2" "\n" "\x07")))
 (= ?x1939 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
