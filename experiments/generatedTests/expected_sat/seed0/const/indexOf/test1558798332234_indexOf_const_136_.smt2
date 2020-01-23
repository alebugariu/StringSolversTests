(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2328 (str.indexof "-1" "-1" 0)))
 (= ?x2328 0)))
(check-sat)

(get-info :reason-unknown)



