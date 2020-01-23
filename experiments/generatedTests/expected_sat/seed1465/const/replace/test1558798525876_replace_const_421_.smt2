(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1430 (str.replace "0" "\n" "-1")))
 (= ?x1430 "0")))
(check-sat)

(get-info :reason-unknown)



