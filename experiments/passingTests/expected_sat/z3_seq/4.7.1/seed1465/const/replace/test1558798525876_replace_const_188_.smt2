(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1993 (str.replace "a" "2" "\n")))
 (= ?x1993 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
