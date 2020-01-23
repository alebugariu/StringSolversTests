(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x352 (str.replace "2" "\x07" "0")))
 (= ?x352 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
