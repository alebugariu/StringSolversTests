(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1658 (str.replace "2" "2" """a""")))
 (= ?x1658 """a""")))
(check-sat)

(get-info :reason-unknown)



