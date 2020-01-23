(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1250 (str.replace "2" "\x07" "")))
 (= ?x1250 "2")))
(check-sat)

(get-info :reason-unknown)



