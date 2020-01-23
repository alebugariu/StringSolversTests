(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1554 (str.contains "2" """a""")))
 (= $x1554 false)))
(check-sat)

(get-info :reason-unknown)



