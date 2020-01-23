(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1868 (str.replace "a" "\n" "")))
 (= ?x1868 "a")))
(check-sat)

(get-info :reason-unknown)



