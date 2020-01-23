(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x638 (str.++ "2" "2")))
 (= ?x638 "22")))
(check-sat)

(get-info :reason-unknown)



