(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2378 (str.replace "\x07" "2" "-1")))
 (= ?x2378 "\x07")))
(check-sat)

(get-info :reason-unknown)



