(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1437 (str.indexof "" "" 0)))
 (= ?x1437 0)))
(check-sat)

(get-info :reason-unknown)



