(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1048 (str.indexof "2" """a""" (- 1))))
 (= ?x1048 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
