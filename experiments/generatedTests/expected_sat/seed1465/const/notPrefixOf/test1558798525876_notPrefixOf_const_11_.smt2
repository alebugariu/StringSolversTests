(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x509 (str.prefixof "a" "-1")))
 (= $x509 false)))
(check-sat)

(get-info :reason-unknown)



