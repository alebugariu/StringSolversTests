(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1516 (str.prefixof """a""" """a""")))
 (= $x1516 true)))
(check-sat)

(get-info :reason-unknown)



