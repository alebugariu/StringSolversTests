(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2467 (str.suffixof """a""" "-1")))
 (= $x2467 false)))
(check-sat)

(get-info :reason-unknown)



