(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1786 (str.suffixof "-1" "")))
 (= $x1786 false)))
(check-sat)

(get-info :reason-unknown)



