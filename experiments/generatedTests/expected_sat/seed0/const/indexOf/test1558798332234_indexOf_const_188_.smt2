(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2669 (str.indexof "2" "0" 2)))
 (= ?x2669 (- 1))))
(check-sat)

(get-info :reason-unknown)



