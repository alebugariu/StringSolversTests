(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1307 (str.indexof "" "\n" 2)))
 (= ?x1307 (- 1))))
(check-sat)

(get-info :reason-unknown)



