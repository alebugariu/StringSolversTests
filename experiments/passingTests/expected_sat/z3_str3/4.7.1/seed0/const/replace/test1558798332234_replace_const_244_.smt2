(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2338 (str.replace "\x07" "0" "\n")))
 (= ?x2338 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
