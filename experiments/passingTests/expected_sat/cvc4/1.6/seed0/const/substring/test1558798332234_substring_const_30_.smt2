(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1881 (str.substr "\x07" 0 (- 1))))
 (= ?x1881 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
