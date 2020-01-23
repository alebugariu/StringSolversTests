(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x965 (str.replace "" "\x07" "2")))
 (= ?x965 "")))
(check-sat)

(get-info :reason-unknown)



