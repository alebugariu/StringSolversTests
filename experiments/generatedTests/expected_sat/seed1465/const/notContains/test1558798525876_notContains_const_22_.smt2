(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1521 (str.contains "\x07" "0")))
 (= $x1521 false)))
(check-sat)

(get-info :reason-unknown)



