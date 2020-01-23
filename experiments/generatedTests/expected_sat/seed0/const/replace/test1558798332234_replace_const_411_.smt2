(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1248 (str.replace "0" "\x07" "\x07")))
 (= ?x1248 "0")))
(check-sat)

(get-info :reason-unknown)



