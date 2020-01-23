(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1166 (str.replace "2" "\n" "0")))
 (= ?x1166 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
