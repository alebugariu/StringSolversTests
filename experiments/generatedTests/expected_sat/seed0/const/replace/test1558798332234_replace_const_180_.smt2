(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1957 (str.replace "a" "0" "\n")))
 (= ?x1957 "a")))
(check-sat)

(get-info :reason-unknown)



