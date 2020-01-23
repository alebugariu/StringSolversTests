(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x421 (str.replace "-1" "" "0")))
 (= ?x421 "0-1")))
(check-sat)

(get-info :reason-unknown)



