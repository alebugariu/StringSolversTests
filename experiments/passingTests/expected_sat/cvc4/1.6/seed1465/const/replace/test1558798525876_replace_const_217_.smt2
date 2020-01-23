(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2197 (str.replace "\x07" "\x07" """a""")))
 (= ?x2197 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
