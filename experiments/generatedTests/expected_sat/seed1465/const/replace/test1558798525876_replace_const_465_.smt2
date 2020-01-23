(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2101 (str.replace "2" "a" """a""")))
 (= ?x2101 "2")))
(check-sat)

(get-info :reason-unknown)



