(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2294 (str.replace "\x07" "-1" "a")))
 (= ?x2294 "\x07")))
(check-sat)

(get-info :reason-unknown)



