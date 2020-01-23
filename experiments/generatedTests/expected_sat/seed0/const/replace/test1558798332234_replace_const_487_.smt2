(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1435 (str.replace "2" "\n" "2")))
 (= ?x1435 "2")))
(check-sat)

(get-info :reason-unknown)



