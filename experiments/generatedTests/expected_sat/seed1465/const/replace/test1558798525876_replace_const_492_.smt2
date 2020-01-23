(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x226 (str.replace "2" "-1" "\n")))
 (= ?x226 "2")))
(check-sat)

(get-info :reason-unknown)



