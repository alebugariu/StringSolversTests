(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2766 (str.prefixof "-1" """a""")))
 (= $x2766 false)))
(check-sat)

(get-info :reason-unknown)



