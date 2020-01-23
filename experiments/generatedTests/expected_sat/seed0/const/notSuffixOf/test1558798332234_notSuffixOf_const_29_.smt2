(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1738 (str.suffixof "-1" """a""")))
 (= $x1738 false)))
(check-sat)

(get-info :reason-unknown)



