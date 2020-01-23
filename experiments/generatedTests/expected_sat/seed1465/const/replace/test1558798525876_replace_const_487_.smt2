(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2622 (str.replace "2" "\n" "2")))
 (= ?x2622 "2")))
(check-sat)

(get-info :reason-unknown)



