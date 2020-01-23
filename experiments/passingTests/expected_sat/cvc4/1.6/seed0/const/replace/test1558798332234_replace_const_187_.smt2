(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1989 (str.replace "a" "2" "\x07")))
 (= ?x1989 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
