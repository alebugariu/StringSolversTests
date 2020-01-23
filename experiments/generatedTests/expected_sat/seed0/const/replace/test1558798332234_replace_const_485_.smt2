(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2210 (str.replace "2" "\n" "-1")))
 (= ?x2210 "2")))
(check-sat)

(get-info :reason-unknown)



