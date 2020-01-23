(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2030 (str.substr "\x07" 2 0)))
 (= ?x2030 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
