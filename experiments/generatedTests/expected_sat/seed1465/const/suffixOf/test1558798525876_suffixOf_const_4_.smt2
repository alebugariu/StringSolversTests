(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x278 (str.suffixof "" "\n")))
 (= $x278 true)))
(check-sat)

(get-info :reason-unknown)



