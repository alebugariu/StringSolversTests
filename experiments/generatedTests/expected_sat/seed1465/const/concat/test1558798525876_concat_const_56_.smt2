(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x589 (str.++ "2" "")))
 (= ?x589 "2")))
(check-sat)

(get-info :reason-unknown)



