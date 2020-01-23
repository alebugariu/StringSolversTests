(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2698 (str.suffixof "0" "\n")))
 (= $x2698 false)))
(check-sat)

(get-info :reason-unknown)



