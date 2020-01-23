(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x2196 (str.++ ?x1823 ?x1823)))
 (= ?x2196 ?x1823))))
(check-sat)

(get-value (tmp_int0 ))
(get-info :reason-unknown)

;tmp_int0 = -1


