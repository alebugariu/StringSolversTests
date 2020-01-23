(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1575 (str.replace """a""" "0" "-1")))
 (= ?x1575 """a""")))
(check-sat)

(get-info :reason-unknown)



