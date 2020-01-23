(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1390 (int.to.str tmp_int5)))
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x2795 (int.to.str ?x92)))
 (= ?x2795 ?x1390)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: timeout
