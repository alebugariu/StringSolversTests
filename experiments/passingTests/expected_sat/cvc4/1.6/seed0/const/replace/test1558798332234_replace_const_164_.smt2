(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1885 (str.replace "a" "\n" "\n")))
 (= ?x1885 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
