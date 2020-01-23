(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x90 (str.indexof """a""" """a""" 0)))
 (= ?x90 0)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
