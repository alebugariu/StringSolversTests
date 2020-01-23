(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2431 (str.indexof "0" "\n" (- 1))))
 (= ?x2431 (- 1))))
(check-sat)

(get-info :reason-unknown)



