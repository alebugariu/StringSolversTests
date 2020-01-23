(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2274 (str.replace "\x07" "\n" "0")))
 (= ?x2274 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
