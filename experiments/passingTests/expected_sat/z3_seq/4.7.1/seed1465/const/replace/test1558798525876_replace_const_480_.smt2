(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1223 (str.replace "2" "\n" "")))
 (= ?x1223 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
