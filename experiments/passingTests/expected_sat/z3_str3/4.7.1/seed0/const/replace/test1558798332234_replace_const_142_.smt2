(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1757 (str.replace "a" """a""" "0")))
 (= ?x1757 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
