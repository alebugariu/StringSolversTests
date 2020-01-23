(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1677 (str.to.int "2")))
 (= ?x1677 2)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
