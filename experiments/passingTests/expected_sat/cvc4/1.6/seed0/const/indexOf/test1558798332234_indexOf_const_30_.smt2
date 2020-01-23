(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x305 (str.indexof """a""" "a" (- 1))))
 (= ?x305 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
