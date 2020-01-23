(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x254 (str.replace "0" "2" "0")))
 (= ?x254 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
