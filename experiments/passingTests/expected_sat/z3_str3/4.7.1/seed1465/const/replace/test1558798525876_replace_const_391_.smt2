(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2566 (str.replace "0" "" "2")))
 (= ?x2566 "20")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
