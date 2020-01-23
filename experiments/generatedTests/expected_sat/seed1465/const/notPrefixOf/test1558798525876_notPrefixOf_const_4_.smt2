(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1701 (str.prefixof """a""" "-1")))
 (= $x1701 false)))
(check-sat)

(get-info :reason-unknown)



