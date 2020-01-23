(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2719 (str.replace "0" "" "-1")))
 (= ?x2719 "-10")))
(check-sat)

(get-info :reason-unknown)



