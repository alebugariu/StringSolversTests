(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1762 (= """a""" "0")))
 (= $x1762 false)))
(check-sat)

(get-info :reason-unknown)



