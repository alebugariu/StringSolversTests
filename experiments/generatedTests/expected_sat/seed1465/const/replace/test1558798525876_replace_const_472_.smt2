(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2736 (str.replace "2" "\x07" "")))
 (= ?x2736 "2")))
(check-sat)

(get-info :reason-unknown)



