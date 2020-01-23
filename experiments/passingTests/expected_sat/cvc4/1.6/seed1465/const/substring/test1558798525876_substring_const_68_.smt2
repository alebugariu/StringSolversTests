(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x476 (str.substr "2" 0 2)))
 (= ?x476 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
