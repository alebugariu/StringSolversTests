(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.substr "\x07" tmp_int1 (- 1)) tmp_str3))
(check-sat)

(get-value (tmp_int1 tmp_str3 ))
(get-info :reason-unknown)

;tmp_int1 = -1
;tmp_str3 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str3 = 
