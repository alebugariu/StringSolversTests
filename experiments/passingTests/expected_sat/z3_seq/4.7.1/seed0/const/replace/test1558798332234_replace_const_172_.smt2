(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1921 (str.replace "a" "-1" "\n")))
 (= ?x1921 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
