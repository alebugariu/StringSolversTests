(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1116 (str.suffixof """a""" "\x07")))
 (= $x1116 false)))
(check-sat)

(get-info :reason-unknown)



