(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2566 (str.suffixof """a""" "-1")))
 (= $x2566 false)))
(check-sat)

(get-info :reason-unknown)



