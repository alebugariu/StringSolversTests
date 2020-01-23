(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2679 (str.indexof tmp_str4 tmp_str4 tmp_int0)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let ((?x1108 (str.indexof ?x348 ?x348 ?x2679)))
 (= ?x1108 (str.to.int tmp_str4))))))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


;actual status: timeout
