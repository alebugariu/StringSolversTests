(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x278 (str.replace "-1" "0" "a")))
 (= ?x278 "-1")))
(check-sat)

(get-info :reason-unknown)



