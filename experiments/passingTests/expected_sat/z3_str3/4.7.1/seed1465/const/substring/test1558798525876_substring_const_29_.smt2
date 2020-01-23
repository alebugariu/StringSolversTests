(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1934 (str.substr "\x07" (- 1) 2)))
 (= ?x1934 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
