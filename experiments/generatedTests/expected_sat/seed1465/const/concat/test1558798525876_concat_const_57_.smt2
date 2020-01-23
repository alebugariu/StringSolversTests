(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x596 (str.++ "2" """a""")))
 (= ?x596 "2""a""")))
(check-sat)

(get-info :reason-unknown)



