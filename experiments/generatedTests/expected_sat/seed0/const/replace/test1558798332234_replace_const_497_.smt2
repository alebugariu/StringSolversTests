(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1582 (str.replace "2" "0" """a""")))
 (= ?x1582 "2")))
(check-sat)

(get-info :reason-unknown)



