(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x964 (str.prefixof "\x07" "a")))
 (= $x964 false)))
(check-sat)

(get-info :reason-unknown)



