(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1430 (str.substr "\x07" (- 1) 2)))
 (= ?x1430 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
