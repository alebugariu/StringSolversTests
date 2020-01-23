(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x824 (str.replace "" """a""" "\x07")))
 (= ?x824 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
