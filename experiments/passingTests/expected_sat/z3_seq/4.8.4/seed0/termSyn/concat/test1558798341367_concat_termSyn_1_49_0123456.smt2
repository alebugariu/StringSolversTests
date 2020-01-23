(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x547 (str.at tmp_str0 tmp_int14)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.++ ?x2060 (int.to.str tmp_int4)) ?x547))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_int14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_int14 = 0


;actual status: sat

;model:
;Int tmp_int4 = -1
;String tmp_str0 = \x00
;Int tmp_int14 = 0
