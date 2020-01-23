(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2555 (str.++ tmp_str20 tmp_str20)))
 (let ((?x1237 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x24 (str.substr ?x1186 ?x1237 ?x1237)))
 (= ?x24 ?x2555))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str20 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str20 = 


;actual status: timeout
