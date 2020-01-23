(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x161 (str.replace "2" "a" "a")))
 (= ?x161 "2")))
(check-sat)

(get-info :reason-unknown)



