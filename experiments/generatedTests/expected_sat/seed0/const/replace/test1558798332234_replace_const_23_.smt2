(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x911 (str.replace "" "a" "2")))
 (= ?x911 "")))
(check-sat)

(get-info :reason-unknown)



