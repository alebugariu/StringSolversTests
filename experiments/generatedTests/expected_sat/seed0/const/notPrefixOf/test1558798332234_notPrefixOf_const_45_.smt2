(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1430 (str.prefixof "2" "\x07")))
 (= $x1430 false)))
(check-sat)

(get-info :reason-unknown)



