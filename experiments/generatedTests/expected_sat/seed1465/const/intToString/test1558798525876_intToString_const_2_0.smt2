(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x646 (int.to.str tmp_int0)))
 (= ?x646 "2")))
(check-sat)

(get-value (tmp_int0 ))
(get-info :reason-unknown)

;tmp_int0 = 2


