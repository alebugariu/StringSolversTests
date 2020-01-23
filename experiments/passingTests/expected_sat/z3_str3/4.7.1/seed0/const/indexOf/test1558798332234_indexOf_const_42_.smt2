(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1576 (str.indexof """a""" "0" (- 1))))
 (= ?x1576 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
