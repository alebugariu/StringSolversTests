(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2502 (str.replace "\n" """a""" "a")))
 (= ?x2502 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
