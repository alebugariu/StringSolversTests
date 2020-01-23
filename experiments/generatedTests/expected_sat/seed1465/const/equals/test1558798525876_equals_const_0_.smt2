(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x86 (= "" "")))
 (= $x86 true)))
(check-sat)

(get-info :reason-unknown)



