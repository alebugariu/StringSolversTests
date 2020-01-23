(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1965 (str.replace "a" "0" "0")))
 (= ?x1965 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
