(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2240 (str.replace "\x07" "\x07" "2")))
 (= ?x2240 "2")))
(check-sat)

(get-info :reason-unknown)



