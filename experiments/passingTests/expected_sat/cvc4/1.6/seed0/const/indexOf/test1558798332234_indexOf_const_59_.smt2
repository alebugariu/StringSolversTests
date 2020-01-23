(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1066 (str.indexof "a" "\x07" 2)))
 (= ?x1066 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
