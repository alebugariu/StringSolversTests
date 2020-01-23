(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1218 (str.indexof "-1" "a" 2)))
 (= ?x1218 (- 1))))
(check-sat)

(get-info :reason-unknown)



