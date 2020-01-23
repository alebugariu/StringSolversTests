(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x158 (str.replace "2" "a" "a")))
 (= ?x158 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
