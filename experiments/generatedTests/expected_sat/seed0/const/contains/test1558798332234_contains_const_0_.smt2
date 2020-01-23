(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1828 (str.contains "" "")))
 (= $x1828 true)))
(check-sat)

(get-info :reason-unknown)



