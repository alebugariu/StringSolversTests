(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x291 (str.indexof "-1" "\n" 0)))
 (= ?x291 (- 1))))
(check-sat)

(get-info :reason-unknown)



