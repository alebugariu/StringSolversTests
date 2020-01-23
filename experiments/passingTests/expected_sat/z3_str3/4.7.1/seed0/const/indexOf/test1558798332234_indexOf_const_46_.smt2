(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x24 (str.indexof """a""" "2" 0)))
 (= ?x24 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
