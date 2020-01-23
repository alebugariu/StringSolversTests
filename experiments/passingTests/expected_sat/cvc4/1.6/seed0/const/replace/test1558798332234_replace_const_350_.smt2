(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2769 (str.replace "-1" "\x07" "0")))
 (= ?x2769 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
