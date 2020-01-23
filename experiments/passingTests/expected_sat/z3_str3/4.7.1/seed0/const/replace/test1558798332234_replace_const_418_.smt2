(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2733 (str.replace "0" "\n" "a")))
 (= ?x2733 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
