(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x435 (str.++ "\n" "a")))
 (= ?x435 "\na")))
(check-sat)

(get-info :reason-unknown)



