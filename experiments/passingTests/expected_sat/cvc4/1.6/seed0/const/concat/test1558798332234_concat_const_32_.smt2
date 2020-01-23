(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x421 (str.++ "\n" "")))
 (= ?x421 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
