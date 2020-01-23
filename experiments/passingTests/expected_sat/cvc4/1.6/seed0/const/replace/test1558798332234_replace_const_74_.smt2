(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1300 (str.replace """a""" """a""" "a")))
 (= ?x1300 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
