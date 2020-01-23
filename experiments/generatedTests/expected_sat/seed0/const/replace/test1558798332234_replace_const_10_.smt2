(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x816 (str.replace "" """a""" "a")))
 (= ?x816 "")))
(check-sat)

(get-info :reason-unknown)



