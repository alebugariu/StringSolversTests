(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2029 (str.replace "\x07" "" """a""")))
 (= ?x2029 """a""\x07")))
(check-sat)

(get-info :reason-unknown)



