(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x527 (str.indexof "" "a" 2)))
 (= ?x527 (- 1))))
(check-sat)

(get-info :reason-unknown)



