(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x781 (str.substr "2" (- 1) 2)))
 (= ?x781 "")))
(check-sat)

(get-info :reason-unknown)



