(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1913 (str.replace "a" "-1" "a")))
 (= ?x1913 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
