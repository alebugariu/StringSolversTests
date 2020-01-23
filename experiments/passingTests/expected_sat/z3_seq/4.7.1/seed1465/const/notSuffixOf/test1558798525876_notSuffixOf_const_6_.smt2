(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1455 (str.suffixof """a""" "2")))
 (= $x1455 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
