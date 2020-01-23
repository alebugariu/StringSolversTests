(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1841 (str.replace "a" "\x07" "a")))
 (= ?x1841 "a")))
(check-sat)

(get-info :reason-unknown)



