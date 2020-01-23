(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1007 (str.replace "" "\n" "-1")))
 (= ?x1007 "")))
(check-sat)

(get-info :reason-unknown)



