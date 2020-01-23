(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x628 (str.replace "0" "0" "\x07")))
 (= ?x628 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
