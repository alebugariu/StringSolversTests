(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2195 (str.substr "2" 2 0)))
 (= ?x2195 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
