(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x644 (str.substr "\n" 2 2)))
 (= ?x644 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
