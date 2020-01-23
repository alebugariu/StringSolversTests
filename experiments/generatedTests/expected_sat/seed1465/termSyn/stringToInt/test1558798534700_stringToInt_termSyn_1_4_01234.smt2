(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str5 () String)
(assert
 (= (str.to.int (int.to.str tmp_int0)) (str.indexof tmp_str5 tmp_str5 tmp_int0)))
(check-sat)

(get-value (tmp_int0 tmp_str5 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = a


