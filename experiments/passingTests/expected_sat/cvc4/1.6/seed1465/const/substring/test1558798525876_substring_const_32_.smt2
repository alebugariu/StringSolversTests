(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2584 (str.substr "\x07" 0 2)))
 (= ?x2584 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
