(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2745 (str.contains "\x07" "")))
 (= $x2745 true)))
(check-sat)

(get-info :reason-unknown)



