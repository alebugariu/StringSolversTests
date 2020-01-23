(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2078 (str.indexof "-1" "2" 2)))
 (= ?x2078 (- 1))))
(check-sat)

(get-info :reason-unknown)



