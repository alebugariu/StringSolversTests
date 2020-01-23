(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2224 (str.replace "\x07" "\x07" "-1")))
 (= ?x2224 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
