(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x735 (str.replace "0" "2" "\x07")))
 (= ?x735 "0")))
(check-sat)

(get-info :reason-unknown)



