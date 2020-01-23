(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_int2 () Int)
(assert
 (= (str.substr """a""" (- 1) tmp_int2) tmp_str3))
(check-sat)

(get-value (tmp_int2 tmp_str3 ))
(get-info :reason-unknown)

;tmp_int2 = -1
;tmp_str3 = 


;actual status: sat

;model:
;Int tmp_int2 = 0
;String tmp_str3 = 
