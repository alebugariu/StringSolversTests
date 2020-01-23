(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x400 (str.prefixof "a" "")))
 (= $x400 false)))
(check-sat)

(get-info :reason-unknown)



