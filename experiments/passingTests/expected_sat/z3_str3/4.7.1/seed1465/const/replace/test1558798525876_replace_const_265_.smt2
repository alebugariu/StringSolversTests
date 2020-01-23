(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2496 (str.replace "\n" """a""" """a""")))
 (= ?x2496 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
