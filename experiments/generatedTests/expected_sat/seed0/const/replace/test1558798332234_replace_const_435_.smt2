(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x522 (str.replace "0" "0" "\x07")))
 (= ?x522 "\x07")))
(check-sat)

(get-info :reason-unknown)



