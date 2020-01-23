(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x192 (str.substr "\x07" (- 1) 0)))
 (= ?x192 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
