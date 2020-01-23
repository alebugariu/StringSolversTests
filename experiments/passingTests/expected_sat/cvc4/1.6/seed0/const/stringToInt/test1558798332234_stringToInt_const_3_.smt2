(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x223 (str.to.int "\x07")))
 (= ?x223 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
