(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1204 (str.indexof """a""" "\x07" 0)))
 (= ?x1204 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
