(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1067 (str.replace "0" """a""" "\x07")))
 (= ?x1067 "0")))
(check-sat)

(get-info :reason-unknown)



