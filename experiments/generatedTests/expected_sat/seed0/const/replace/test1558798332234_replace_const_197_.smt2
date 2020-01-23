(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2077 (str.replace "\x07" "" "-1")))
 (= ?x2077 "-1\x07")))
(check-sat)

(get-info :reason-unknown)



