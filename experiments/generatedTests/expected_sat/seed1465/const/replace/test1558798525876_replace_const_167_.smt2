(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1897 (str.replace "a" "\n" "2")))
 (= ?x1897 "a")))
(check-sat)

(get-info :reason-unknown)



