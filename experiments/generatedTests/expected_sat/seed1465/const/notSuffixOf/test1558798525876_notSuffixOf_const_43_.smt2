(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2435 (str.suffixof "2" """a""")))
 (= $x2435 false)))
(check-sat)

(get-info :reason-unknown)



