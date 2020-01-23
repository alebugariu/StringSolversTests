(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1981 (str.replace "a" "2" """a""")))
 (= ?x1981 "a")))
(check-sat)

(get-info :reason-unknown)



