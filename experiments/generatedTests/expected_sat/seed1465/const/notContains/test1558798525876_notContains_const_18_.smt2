(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1810 (str.contains "\x07" """a""")))
 (= $x1810 false)))
(check-sat)

(get-info :reason-unknown)



