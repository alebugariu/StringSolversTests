(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1802 (str.suffixof "\x07" """a""")))
 (= $x1802 false)))
(check-sat)

(get-info :reason-unknown)



