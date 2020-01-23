(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1778 (str.replace "2" "\n" "a")))
 (= ?x1778 "2")))
(check-sat)

(get-info :reason-unknown)



