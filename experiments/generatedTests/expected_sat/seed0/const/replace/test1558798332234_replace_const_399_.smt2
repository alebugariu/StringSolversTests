(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2430 (str.replace "0" """a""" "2")))
 (= ?x2430 "0")))
(check-sat)

(get-info :reason-unknown)



