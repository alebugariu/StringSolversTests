(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1053 (str.replace "2" "" "0")))
 (= ?x1053 "02")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
