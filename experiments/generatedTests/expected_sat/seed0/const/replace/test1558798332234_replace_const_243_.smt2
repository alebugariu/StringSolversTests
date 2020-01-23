(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2334 (str.replace "\x07" "0" "\x07")))
 (= ?x2334 "\x07")))
(check-sat)

(get-info :reason-unknown)



