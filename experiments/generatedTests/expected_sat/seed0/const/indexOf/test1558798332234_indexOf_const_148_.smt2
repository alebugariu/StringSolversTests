(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x751 (str.indexof "0" """a""" 0)))
 (= ?x751 (- 1))))
(check-sat)

(get-info :reason-unknown)



