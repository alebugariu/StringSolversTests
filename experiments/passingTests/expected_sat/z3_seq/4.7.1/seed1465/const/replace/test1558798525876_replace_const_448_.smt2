(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1112 (str.replace "2" "" "")))
 (= ?x1112 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
