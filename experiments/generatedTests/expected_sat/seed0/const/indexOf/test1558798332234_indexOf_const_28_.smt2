(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x322 (str.indexof """a""" """a""" 0)))
 (= ?x322 0)))
(check-sat)

(get-info :reason-unknown)



