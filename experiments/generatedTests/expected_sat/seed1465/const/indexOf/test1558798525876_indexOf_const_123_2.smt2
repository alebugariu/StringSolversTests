(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x836 (str.indexof "-1" """a""" tmp_int2)))
 (= ?x836 (- 1))))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = -1


