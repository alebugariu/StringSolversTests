(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x761 (str.replace "2" "-1" "2")))
 (= ?x761 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
