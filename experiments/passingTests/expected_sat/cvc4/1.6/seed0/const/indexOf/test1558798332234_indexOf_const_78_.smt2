(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1196 (str.indexof "\x07" "a" (- 1))))
 (= ?x1196 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
