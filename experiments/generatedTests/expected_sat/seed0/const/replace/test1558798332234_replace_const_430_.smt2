(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2379 (str.replace "0" "-1" "0")))
 (= ?x2379 "0")))
(check-sat)

(get-info :reason-unknown)



