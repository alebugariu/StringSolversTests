(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2059 (str.substr "2" 0 2)))
 (= ?x2059 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
