(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2165 (str.replace "0" "" """a""")))
 (= ?x2165 """a""0")))
(check-sat)

(get-info :reason-unknown)



