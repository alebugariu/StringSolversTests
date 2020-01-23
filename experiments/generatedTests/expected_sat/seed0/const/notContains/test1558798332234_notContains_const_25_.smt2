(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2191 (str.contains "\n" "a")))
 (= $x2191 false)))
(check-sat)

(get-info :reason-unknown)



