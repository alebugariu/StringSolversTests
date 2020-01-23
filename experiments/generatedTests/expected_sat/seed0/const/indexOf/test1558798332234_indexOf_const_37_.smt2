(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1271 (str.indexof """a""" "\n" 0)))
 (= ?x1271 (- 1))))
(check-sat)

(get-info :reason-unknown)



