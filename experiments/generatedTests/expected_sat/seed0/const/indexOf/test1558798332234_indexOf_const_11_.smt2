(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2367 (str.indexof "" "\x07" 2)))
 (= ?x2367 (- 1))))
(check-sat)

(get-info :reason-unknown)



