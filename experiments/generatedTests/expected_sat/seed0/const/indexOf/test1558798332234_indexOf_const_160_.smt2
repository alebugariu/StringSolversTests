(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2644 (str.indexof "0" "-1" 0)))
 (= ?x2644 (- 1))))
(check-sat)

(get-info :reason-unknown)



