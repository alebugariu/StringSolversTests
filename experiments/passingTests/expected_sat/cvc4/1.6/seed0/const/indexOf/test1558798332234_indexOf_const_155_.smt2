(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x72 (str.indexof "0" "\x07" 2)))
 (= ?x72 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
