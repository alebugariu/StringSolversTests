(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2641 (str.indexof "0" "\n" 2)))
 (= ?x2641 (- 1))))
(check-sat)

(get-info :reason-unknown)



