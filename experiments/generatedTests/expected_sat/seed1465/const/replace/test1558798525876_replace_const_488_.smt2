(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2275 (str.replace "2" "-1" "")))
 (= ?x2275 "2")))
(check-sat)

(get-info :reason-unknown)



