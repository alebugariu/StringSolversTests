(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2490 (str.replace "\n" """a""" "")))
 (= ?x2490 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
