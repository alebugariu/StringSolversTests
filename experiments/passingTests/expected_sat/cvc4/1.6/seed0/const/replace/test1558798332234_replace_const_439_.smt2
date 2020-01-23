(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1698 (str.replace "0" "0" "2")))
 (= ?x1698 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
