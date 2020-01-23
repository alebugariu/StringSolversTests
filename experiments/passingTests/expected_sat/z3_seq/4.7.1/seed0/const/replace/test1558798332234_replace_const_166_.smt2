(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1893 (str.replace "a" "\n" "0")))
 (= ?x1893 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
