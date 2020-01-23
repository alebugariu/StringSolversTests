(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1019 (str.replace "" "\n" "2")))
 (= ?x1019 "")))
(check-sat)

(get-info :reason-unknown)



