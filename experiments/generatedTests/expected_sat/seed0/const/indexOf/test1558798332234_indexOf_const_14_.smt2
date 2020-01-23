(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1069 (str.indexof "" "\n" 2)))
 (= ?x1069 (- 1))))
(check-sat)

(get-info :reason-unknown)



