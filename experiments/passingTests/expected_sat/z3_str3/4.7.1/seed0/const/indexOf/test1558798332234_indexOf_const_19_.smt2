(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1820 (str.indexof "" "0" 0)))
 (= ?x1820 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
