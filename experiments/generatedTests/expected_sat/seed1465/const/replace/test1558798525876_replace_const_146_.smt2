(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1784 (str.replace "a" "a" "a")))
 (= ?x1784 "a")))
(check-sat)

(get-info :reason-unknown)



