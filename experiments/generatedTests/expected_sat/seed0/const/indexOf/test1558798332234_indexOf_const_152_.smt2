(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2008 (str.indexof "0" "a" 2)))
 (= ?x2008 (- 1))))
(check-sat)

(get-info :reason-unknown)



