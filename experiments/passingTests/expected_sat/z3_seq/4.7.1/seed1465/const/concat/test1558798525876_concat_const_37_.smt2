(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x456 (str.++ "\n" "-1")))
 (= ?x456 "\n-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
