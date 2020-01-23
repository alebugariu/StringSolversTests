(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2339 (str.replace "0" "\n" "")))
 (= ?x2339 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
