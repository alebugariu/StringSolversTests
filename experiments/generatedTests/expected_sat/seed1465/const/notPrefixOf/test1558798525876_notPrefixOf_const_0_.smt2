(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1693 (str.prefixof """a""" "")))
 (= $x1693 false)))
(check-sat)

(get-info :reason-unknown)



