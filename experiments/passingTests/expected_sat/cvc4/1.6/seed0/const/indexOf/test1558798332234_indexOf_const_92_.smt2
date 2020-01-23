(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1039 (str.indexof "\x07" "0" 2)))
 (= ?x1039 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
