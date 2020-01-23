(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x986 (str.indexof "-1" "\n" 0)))
 (= ?x986 (- 1))))
(check-sat)

(get-info :reason-unknown)



