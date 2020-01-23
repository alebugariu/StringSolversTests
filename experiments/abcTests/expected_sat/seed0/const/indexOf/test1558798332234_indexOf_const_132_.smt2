(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.indexof "-1" "\n" (- 1)) (- 1)))
(check-sat)

(get-info :reason-unknown)
