(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x115 (str.at "\x07" 2)))
 (= ?x115 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
