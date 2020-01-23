(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2183 (str.indexof "0" "\n" 0)))
 (= ?x2183 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
