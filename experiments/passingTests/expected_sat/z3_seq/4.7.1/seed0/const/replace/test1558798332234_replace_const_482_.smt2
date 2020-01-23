(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x220 (str.replace "2" "\n" "a")))
 (= ?x220 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
