(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2612 (str.replace "\n" "\n" """a""")))
 (= ?x2612 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
