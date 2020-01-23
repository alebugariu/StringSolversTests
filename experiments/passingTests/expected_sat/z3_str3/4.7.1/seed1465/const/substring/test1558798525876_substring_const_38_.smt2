(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1191 (str.substr "\n" (- 1) 2)))
 (= ?x1191 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
