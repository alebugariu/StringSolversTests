(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1334 (str.contains "0" "2")))
 (= $x1334 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
