(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x799 (str.substr "\x07" (- 1) 0)))
 (= ?x799 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
