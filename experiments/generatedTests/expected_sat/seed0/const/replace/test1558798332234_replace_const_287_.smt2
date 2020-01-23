(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2599 (str.replace "\n" "\x07" "2")))
 (= ?x2599 "\n")))
(check-sat)

(get-info :reason-unknown)



