(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2109 (str.replace "\x07" """a""" "")))
 (= ?x2109 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
