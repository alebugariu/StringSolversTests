(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2172 (str.substr "\n" 0 0)))
 (= ?x2172 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
