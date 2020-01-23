(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x959 (str.replace "" "\x07" "0")))
 (= ?x959 "")))
(check-sat)

(get-info :reason-unknown)



