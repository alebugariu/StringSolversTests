(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x599 (str.indexof "-1" "\n" (- 1))))
 (= ?x599 (- 1))))
(check-sat)

(get-info :reason-unknown)



