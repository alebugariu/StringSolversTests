(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2126 (str.replace "\x07" """a""" "\x07")))
 (= ?x2126 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
