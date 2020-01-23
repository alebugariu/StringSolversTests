(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2364 (str.indexof """a""" "0" 0)))
 (= ?x2364 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
