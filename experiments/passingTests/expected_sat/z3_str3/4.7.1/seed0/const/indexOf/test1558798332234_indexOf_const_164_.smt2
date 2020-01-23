(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x738 (str.indexof "0" "0" 2)))
 (= ?x738 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
