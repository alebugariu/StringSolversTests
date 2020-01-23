(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2007 (str.indexof "" "2" 0)))
 (= ?x2007 (- 1))))
(check-sat)

(get-info :reason-unknown)



