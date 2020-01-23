(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2302 (str.replace "\x07" "-1" "\n")))
 (= ?x2302 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
