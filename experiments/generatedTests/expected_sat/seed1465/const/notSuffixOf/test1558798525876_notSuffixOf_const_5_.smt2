(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1203 (str.suffixof """a""" "0")))
 (= $x1203 false)))
(check-sat)

(get-info :reason-unknown)



