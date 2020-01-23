(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x624 (str.++ "2" "-1")))
 (= ?x624 "2-1")))
(check-sat)

(get-info :reason-unknown)



