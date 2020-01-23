(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1443 (= """a""" """a""")))
 (= $x1443 true)))
(check-sat)

(get-info :reason-unknown)



