(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1123 (str.contains "" """a""")))
 (= $x1123 false)))
(check-sat)

(get-info :reason-unknown)



