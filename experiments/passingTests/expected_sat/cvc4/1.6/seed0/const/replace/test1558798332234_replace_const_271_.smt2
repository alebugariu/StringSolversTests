(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2530 (str.replace "\n" """a""" "2")))
 (= ?x2530 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
