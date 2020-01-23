(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1994 (str.replace "2" "2" "\n")))
 (= ?x1994 "\n")))
(check-sat)

(get-info :reason-unknown)



