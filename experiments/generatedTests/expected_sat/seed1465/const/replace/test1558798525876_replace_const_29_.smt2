(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x953 (str.replace "" "\x07" "-1")))
 (= ?x953 "")))
(check-sat)

(get-info :reason-unknown)



