(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2060 (str.replace "0" "\x07" "2")))
 (= ?x2060 "0")))
(check-sat)

(get-info :reason-unknown)



