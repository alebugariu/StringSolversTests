(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x906 (str.prefixof "\x07" "")))
 (= $x906 false)))
(check-sat)

(get-info :reason-unknown)



