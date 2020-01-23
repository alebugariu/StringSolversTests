(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x540 (str.++ "0" """a""")))
 (= ?x540 "0""a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
