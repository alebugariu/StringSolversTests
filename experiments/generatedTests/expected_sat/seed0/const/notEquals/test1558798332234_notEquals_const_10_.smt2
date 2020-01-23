(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1123 (= """a""" "\n")))
 (= $x1123 false)))
(check-sat)

(get-info :reason-unknown)



