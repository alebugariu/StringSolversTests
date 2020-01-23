(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x301 (= """a""" "a")))
 (= $x301 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
