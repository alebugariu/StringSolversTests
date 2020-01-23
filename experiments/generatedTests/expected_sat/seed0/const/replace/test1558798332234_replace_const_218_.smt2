(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2203 (str.replace "\x07" "\x07" "a")))
 (= ?x2203 "a")))
(check-sat)

(get-info :reason-unknown)



