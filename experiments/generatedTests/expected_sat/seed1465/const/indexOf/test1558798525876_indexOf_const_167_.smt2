(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2522 (str.indexof "0" "2" 2)))
 (= ?x2522 (- 1))))
(check-sat)

(get-info :reason-unknown)



