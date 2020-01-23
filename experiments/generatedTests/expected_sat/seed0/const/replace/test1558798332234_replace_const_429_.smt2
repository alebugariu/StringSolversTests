(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1454 (str.replace "0" "-1" "-1")))
 (= ?x1454 "0")))
(check-sat)

(get-info :reason-unknown)



