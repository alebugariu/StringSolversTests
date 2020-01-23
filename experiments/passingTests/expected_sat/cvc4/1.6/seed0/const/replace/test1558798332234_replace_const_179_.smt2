(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1953 (str.replace "a" "0" "\x07")))
 (= ?x1953 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
