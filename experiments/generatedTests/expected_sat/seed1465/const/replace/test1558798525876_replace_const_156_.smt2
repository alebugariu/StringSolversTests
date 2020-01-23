(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1849 (str.replace "a" "\x07" "\n")))
 (= ?x1849 "a")))
(check-sat)

(get-info :reason-unknown)



