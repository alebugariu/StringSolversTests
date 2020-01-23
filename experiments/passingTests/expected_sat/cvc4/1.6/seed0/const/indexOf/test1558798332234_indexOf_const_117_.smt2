(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x932 (str.indexof "\n" "2" (- 1))))
 (= ?x932 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
