(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2422 (str.replace "2" "0" "a")))
 (= ?x2422 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
