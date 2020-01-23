(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x547 (str.++ "0" "a")))
 (= ?x547 "0a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
