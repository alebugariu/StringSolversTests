(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x185 (str.indexof "0" "\x07" 2)))
 (= ?x185 (- 1))))
(check-sat)

(get-info :reason-unknown)



