(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x485 (str.indexof """a""" "\n" 2)))
 (= ?x485 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
