(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1770 (str.replace "2" "2" "a")))
 (= ?x1770 "a")))
(check-sat)

(get-info :reason-unknown)



