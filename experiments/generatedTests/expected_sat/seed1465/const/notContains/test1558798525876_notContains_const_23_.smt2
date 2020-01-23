(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1254 (str.contains "\x07" "2")))
 (= $x1254 false)))
(check-sat)

(get-info :reason-unknown)



