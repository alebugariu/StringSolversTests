(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x274 (str.++ """a""" "\x07")))
 (= ?x274 """a""\x07")))
(check-sat)

(get-info :reason-unknown)



