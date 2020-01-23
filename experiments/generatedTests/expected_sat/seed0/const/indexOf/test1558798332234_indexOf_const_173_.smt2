(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x375 (str.indexof "2" """a""" 2)))
 (= ?x375 (- 1))))
(check-sat)

(get-info :reason-unknown)



