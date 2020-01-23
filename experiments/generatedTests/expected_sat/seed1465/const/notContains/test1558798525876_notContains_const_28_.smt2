(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1954 (str.contains "\n" "0")))
 (= $x1954 false)))
(check-sat)

(get-info :reason-unknown)



