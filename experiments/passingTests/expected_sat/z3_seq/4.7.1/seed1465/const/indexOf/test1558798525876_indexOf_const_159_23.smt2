(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_int2 () Int)
(assert
 (= (str.indexof "0" "-1" tmp_int2) tmp_int3))
(check-sat)

(get-value (tmp_int2 tmp_int3 ))
(get-info :reason-unknown)

;tmp_int2 = -1
;tmp_int3 = -1


;actual status: sat

;model:
;Int tmp_int2 = -1
;Int tmp_int3 = -1
