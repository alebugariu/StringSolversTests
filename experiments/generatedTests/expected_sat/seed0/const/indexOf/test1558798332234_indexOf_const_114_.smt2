(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x502 (str.indexof "\n" "0" (- 1))))
 (= ?x502 (- 1))))
(check-sat)

(get-info :reason-unknown)



