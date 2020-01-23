(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2226 (str.contains "\x07" "-1")))
 (= $x2226 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
