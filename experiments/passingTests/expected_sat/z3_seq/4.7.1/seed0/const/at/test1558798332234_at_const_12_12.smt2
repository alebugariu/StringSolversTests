(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "\n" tmp_int1) tmp_str2))
(check-sat)

(get-value (tmp_int1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int1 = -1
;tmp_str2 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str2 = \n
