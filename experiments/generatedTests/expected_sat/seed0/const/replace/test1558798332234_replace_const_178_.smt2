(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1949 (str.replace "a" "0" "a")))
 (= ?x1949 "a")))
(check-sat)

(get-info :reason-unknown)



