(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2026 (str.indexof "0" "2" 0)))
 (= ?x2026 (- 1))))
(check-sat)

(get-info :reason-unknown)



