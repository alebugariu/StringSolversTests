(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x725 (str.contains "\n" "-1")))
 (= $x725 false)))
(check-sat)

(get-info :reason-unknown)



