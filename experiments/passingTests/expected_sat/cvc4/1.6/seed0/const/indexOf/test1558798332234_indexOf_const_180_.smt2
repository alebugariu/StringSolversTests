(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x706 (str.indexof "2" "\n" (- 1))))
 (= ?x706 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
