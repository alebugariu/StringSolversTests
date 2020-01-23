(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x539 (str.indexof "-1" "2" (- 1))))
 (= ?x539 (- 1))))
(check-sat)

(get-info :reason-unknown)



