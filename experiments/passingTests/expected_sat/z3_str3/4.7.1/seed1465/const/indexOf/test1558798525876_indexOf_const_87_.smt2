(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x362 (str.indexof "\x07" "-1" (- 1))))
 (= ?x362 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
