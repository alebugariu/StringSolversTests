(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x210 (str.contains """a""" "a")))
 (= $x210 true)))
(check-sat)

(get-info :reason-unknown)



