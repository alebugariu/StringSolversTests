(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1324 (str.replace """a""" """a""" "-1")))
 (= ?x1324 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
