(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1241 (str.replace """a""" "" "\n")))
 (= ?x1241 "\n""a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
