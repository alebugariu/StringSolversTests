(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1423 (str.indexof """a""" "a" 2)))
 (= ?x1423 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
