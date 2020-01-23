(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x815 (str.suffixof "0" "")))
 (= $x815 false)))
(check-sat)

(get-info :reason-unknown)



