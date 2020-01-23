(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x127 (str.indexof "\x07" "\x07" 0)))
 (= ?x127 0)))
(check-sat)

(get-info :reason-unknown)



