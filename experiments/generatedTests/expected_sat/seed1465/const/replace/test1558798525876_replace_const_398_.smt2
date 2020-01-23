(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2391 (str.replace "0" """a""" "0")))
 (= ?x2391 "0")))
(check-sat)

(get-info :reason-unknown)



