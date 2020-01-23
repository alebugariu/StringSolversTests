(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x326 (str.replace "0" "\x07" "-1")))
 (= ?x326 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
