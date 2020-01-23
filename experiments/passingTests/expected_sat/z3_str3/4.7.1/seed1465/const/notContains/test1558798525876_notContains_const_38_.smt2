(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2705 (str.contains "0" "\x07")))
 (= $x2705 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
