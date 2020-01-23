(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x407 (str.replace "0" "" "-1")))
 (= ?x407 "-10")))
(check-sat)

(get-info :reason-unknown)



