(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2623 (str.replace "2" "\x07" "-1")))
 (= ?x2623 "2")))
(check-sat)

(get-info :reason-unknown)



