(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x523 (str.replace "2" "2" "a")))
 (= ?x523 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
