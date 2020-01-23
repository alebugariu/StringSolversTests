(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2171 (str.indexof "\n" "\n" (- 1))))
 (= ?x2171 (- 1))))
(check-sat)

(get-info :reason-unknown)



