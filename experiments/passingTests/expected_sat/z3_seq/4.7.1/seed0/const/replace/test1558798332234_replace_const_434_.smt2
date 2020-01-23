(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1896 (str.replace "0" "0" "a")))
 (= ?x1896 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
