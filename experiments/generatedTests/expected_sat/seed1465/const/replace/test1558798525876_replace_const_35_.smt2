(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x995 (str.replace "" "\n" "\x07")))
 (= ?x995 "")))
(check-sat)

(get-info :reason-unknown)



