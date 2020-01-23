(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2485 (str.substr "\x07" 0 0)))
 (= ?x2485 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
