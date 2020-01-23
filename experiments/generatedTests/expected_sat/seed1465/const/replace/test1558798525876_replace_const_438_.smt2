(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1256 (str.replace "0" "0" "0")))
 (= ?x1256 "0")))
(check-sat)

(get-info :reason-unknown)



