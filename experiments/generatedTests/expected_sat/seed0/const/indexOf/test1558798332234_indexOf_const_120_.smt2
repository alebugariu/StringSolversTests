(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2652 (str.indexof "-1" "" (- 1))))
 (= ?x2652 (- 1))))
(check-sat)

(get-info :reason-unknown)



