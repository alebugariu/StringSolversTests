(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x705 (str.replace "2" "0" "")))
 (= ?x705 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
