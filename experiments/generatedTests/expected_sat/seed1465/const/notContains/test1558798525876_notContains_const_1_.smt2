(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2431 (str.contains "" "a")))
 (= $x2431 false)))
(check-sat)

(get-info :reason-unknown)



