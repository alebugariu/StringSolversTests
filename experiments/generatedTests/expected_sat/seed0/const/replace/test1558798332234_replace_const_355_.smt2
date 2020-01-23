(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2011 (str.replace "-1" "\n" "\x07")))
 (= ?x2011 "-1")))
(check-sat)

(get-info :reason-unknown)



