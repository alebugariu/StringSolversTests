(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2115 (str.replace "\x07" """a""" """a""")))
 (= ?x2115 "\x07")))
(check-sat)

(get-info :reason-unknown)



