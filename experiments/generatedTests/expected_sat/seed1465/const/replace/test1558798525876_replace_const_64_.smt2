(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1193 (str.replace """a""" "" "")))
 (= ?x1193 """a""")))
(check-sat)

(get-info :reason-unknown)



