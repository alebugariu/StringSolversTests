(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x856 (str.replace "" """a""" "2")))
 (= ?x856 "")))
(check-sat)

(get-info :reason-unknown)



