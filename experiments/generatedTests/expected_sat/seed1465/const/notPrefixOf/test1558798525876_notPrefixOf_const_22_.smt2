(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x356 (str.prefixof "\n" """a""")))
 (= $x356 false)))
(check-sat)

(get-info :reason-unknown)



