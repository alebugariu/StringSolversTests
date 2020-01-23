(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1006 (str.suffixof """a""" "0")))
 (= $x1006 false)))
(check-sat)

(get-info :reason-unknown)



