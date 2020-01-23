(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2398 (str.replace "\n" "" "")))
 (= ?x2398 "\n")))
(check-sat)

(get-info :reason-unknown)



