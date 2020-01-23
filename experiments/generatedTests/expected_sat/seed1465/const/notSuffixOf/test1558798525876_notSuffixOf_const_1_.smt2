(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x265 (str.suffixof """a""" "a")))
 (= $x265 false)))
(check-sat)

(get-info :reason-unknown)



