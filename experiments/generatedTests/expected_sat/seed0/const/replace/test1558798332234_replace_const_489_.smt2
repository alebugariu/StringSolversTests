(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1591 (str.replace "2" "-1" """a""")))
 (= ?x1591 "2")))
(check-sat)

(get-info :reason-unknown)



