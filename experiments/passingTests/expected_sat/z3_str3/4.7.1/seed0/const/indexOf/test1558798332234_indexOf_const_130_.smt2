(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2159 (str.indexof "-1" "\x07" 0)))
 (= ?x2159 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
