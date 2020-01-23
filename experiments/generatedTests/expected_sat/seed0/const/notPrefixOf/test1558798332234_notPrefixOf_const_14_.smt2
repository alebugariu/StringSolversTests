(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1278 (str.prefixof "\x07" "")))
 (= $x1278 false)))
(check-sat)

(get-info :reason-unknown)



