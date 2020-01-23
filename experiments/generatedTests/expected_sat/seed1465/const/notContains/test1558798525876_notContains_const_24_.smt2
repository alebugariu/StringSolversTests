(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2525 (str.contains "\n" """a""")))
 (= $x2525 false)))
(check-sat)

(get-info :reason-unknown)



