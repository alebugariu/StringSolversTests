(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2626 (str.indexof "\x07" "0" (- 1))))
 (= ?x2626 (- 1))))
(check-sat)

(get-info :reason-unknown)



