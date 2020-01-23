(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x105 (str.at "\x07" (- 1))))
 (= ?x105 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
