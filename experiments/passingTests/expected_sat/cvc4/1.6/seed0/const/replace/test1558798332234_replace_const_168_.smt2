(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1904 (str.replace "a" "-1" "")))
 (= ?x1904 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
