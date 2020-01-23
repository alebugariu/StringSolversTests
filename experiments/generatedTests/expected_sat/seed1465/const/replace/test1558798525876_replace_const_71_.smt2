(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1277 (str.replace """a""" "" "2")))
 (= ?x1277 "2""a""")))
(check-sat)

(get-info :reason-unknown)



