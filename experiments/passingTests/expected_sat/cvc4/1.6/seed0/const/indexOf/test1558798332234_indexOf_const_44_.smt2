(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2393 (str.indexof """a""" "0" 2)))
 (= ?x2393 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
