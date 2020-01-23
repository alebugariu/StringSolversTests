(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1265 (str.replace """a""" "" "0")))
 (= ?x1265 "0""a""")))
(check-sat)

(get-info :reason-unknown)



