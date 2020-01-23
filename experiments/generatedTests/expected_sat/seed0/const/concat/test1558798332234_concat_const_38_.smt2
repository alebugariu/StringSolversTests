(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x463 (str.++ "\n" "0")))
 (= ?x463 "\n0")))
(check-sat)

(get-info :reason-unknown)



