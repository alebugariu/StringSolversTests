(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1217 (str.replace """a""" "" "a")))
 (= ?x1217 "a""a""")))
(check-sat)

(get-info :reason-unknown)



