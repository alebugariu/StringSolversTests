(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1667 (str.replace "a" "" "\x07")))
 (= ?x1667 "\x07a")))
(check-sat)

(get-info :reason-unknown)



