(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int4 () Int)
(declare-fun tmp_str5 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.len (int.to.str tmp_int0)) (str.indexof tmp_str5 tmp_str5 tmp_int4)))
(check-sat)

(get-value (tmp_int0 tmp_str5 tmp_int4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = a
;tmp_int4 = 0


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str5 = \x00
;Int tmp_int4 = 0
