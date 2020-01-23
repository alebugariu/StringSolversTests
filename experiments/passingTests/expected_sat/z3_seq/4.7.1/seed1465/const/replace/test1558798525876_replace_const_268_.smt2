(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2513 (str.replace "\n" """a""" "\n")))
 (= ?x2513 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
