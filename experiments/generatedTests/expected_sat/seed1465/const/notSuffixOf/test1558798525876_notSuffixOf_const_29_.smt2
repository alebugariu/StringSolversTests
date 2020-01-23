(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2669 (str.suffixof "-1" """a""")))
 (= $x2669 false)))
(check-sat)

(get-info :reason-unknown)



