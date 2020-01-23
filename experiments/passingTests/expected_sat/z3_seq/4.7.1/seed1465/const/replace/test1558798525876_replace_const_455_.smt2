(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2210 (str.replace "2" "" "2")))
 (= ?x2210 "22")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
