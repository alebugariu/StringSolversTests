(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1178 (str.replace "2" "" "0")))
 (= ?x1178 "02")))
(check-sat)

(get-info :reason-unknown)



