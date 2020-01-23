(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1236 (str.replace "0" """a""" "a")))
 (= ?x1236 "0")))
(check-sat)

(get-info :reason-unknown)



