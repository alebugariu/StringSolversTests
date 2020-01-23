(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x309 (int.to.str tmp_int0)))
 (= (str.++ ?x309 (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.at tmp_str2 tmp_int14))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_int14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_int14 = 0


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = \x00
;Int tmp_int14 = 0
