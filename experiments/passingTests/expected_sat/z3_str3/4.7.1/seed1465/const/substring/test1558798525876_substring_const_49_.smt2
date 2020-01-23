(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x417 (str.substr "-1" 0 0)))
 (= ?x417 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
