(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1497 (str.contains """a""" "2")))
 (= $x1497 false)))
(check-sat)

(get-info :reason-unknown)



