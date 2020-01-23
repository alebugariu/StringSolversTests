(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1043 (str.replace "2" "0" "2")))
 (= ?x1043 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
