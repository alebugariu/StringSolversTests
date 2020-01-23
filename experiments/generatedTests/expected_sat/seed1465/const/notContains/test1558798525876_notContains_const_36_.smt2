(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x859 (str.contains "0" """a""")))
 (= $x859 false)))
(check-sat)

(get-info :reason-unknown)



