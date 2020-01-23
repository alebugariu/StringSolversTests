(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1917 (str.substr "\x07" 2 (- 1))))
 (= ?x1917 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
