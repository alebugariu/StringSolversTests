(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1026 (str.replace "2" "\x07" "2")))
 (= ?x1026 "2")))
(check-sat)

(get-info :reason-unknown)



