(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2328 (str.substr """a""" tmp_int1 0)))
 (= ?x2328 "")))
(check-sat)

(get-value (tmp_int1 ))
(get-info :reason-unknown)

;tmp_int1 = -1


