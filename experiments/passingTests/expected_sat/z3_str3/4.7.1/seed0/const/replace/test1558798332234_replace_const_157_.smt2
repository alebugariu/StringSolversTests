(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1853 (str.replace "a" "\x07" "-1")))
 (= ?x1853 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
