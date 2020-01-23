(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2244 (str.replace "2" "0" "\x07")))
 (= ?x2244 "2")))
(check-sat)

(get-info :reason-unknown)



