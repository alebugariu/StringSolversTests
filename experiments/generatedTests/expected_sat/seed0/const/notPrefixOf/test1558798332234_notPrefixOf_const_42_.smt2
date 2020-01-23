(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x220 (str.prefixof "2" "")))
 (= $x220 false)))
(check-sat)

(get-info :reason-unknown)



