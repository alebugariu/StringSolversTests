(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1739 (str.replace "a" """a""" "\x07")))
 (= ?x1739 "a")))
(check-sat)

(get-info :reason-unknown)



