(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1968 (str.replace "0" "-1" "\n")))
 (= ?x1968 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
