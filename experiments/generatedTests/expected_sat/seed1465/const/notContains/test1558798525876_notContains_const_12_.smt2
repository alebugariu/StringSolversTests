(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1583 (str.contains "a" """a""")))
 (= $x1583 false)))
(check-sat)

(get-info :reason-unknown)



