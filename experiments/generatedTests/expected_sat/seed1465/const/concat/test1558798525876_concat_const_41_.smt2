(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x484 (str.++ "-1" """a""")))
 (= ?x484 "-1""a""")))
(check-sat)

(get-info :reason-unknown)



