(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1505 (str.indexof "\x07" "0" 2)))
 (= ?x1505 (- 1))))
(check-sat)

(get-info :reason-unknown)



