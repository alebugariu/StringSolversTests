(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2127 (str.contains """a""" "\n")))
 (= $x2127 false)))
(check-sat)

(get-info :reason-unknown)



