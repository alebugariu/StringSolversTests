(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x372 (str.++ "\x07" """a""")))
 (= ?x372 "\x07""a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
