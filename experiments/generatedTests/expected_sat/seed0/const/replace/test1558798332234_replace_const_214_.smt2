(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2180 (str.replace "\x07" "a" "0")))
 (= ?x2180 "\x07")))
(check-sat)

(get-info :reason-unknown)



