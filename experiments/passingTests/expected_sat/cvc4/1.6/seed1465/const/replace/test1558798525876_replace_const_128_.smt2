(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1631 (str.replace "a" "" "")))
 (= ?x1631 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
