(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x568 (str.++ "0" "-1")))
 (= ?x568 "0-1")))
(check-sat)

(get-info :reason-unknown)



