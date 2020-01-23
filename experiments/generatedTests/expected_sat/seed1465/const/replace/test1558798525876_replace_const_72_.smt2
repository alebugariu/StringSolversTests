(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1286 (str.replace """a""" """a""" "")))
 (= ?x1286 "")))
(check-sat)

(get-info :reason-unknown)



