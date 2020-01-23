(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2682 (str.replace "0" "2" "2")))
 (= ?x2682 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
