(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.indexof "\x07" "a" (- 1)) (- 1)))
(check-sat)

(get-info :reason-unknown)
;actual status: sat
