(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x996 (str.indexof """a""" "2" 2)))
 (= ?x996 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
