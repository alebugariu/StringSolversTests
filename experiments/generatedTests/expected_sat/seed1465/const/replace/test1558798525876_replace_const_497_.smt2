(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2770 (str.replace "2" "0" """a""")))
 (= ?x2770 "2")))
(check-sat)

(get-info :reason-unknown)



