(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1123 (str.indexof "-1" "\x07" 2)))
 (= ?x1123 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
