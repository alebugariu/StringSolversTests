(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2796 (str.indexof "" "2" 2)))
 (= ?x2796 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
