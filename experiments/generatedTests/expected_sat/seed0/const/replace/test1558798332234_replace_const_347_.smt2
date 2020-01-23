(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2326 (str.replace "-1" "\x07" "\x07")))
 (= ?x2326 "-1")))
(check-sat)

(get-info :reason-unknown)



