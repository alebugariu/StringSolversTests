(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2570 (str.suffixof "2" "a")))
 (= $x2570 false)))
(check-sat)

(get-info :reason-unknown)



