(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x158 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (= (str.to.int (str.replace tmp_str0 tmp_str0 tmp_str0)) ?x158)))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


;actual status: sat

;model:
;String tmp_str0 = 0
;Int tmp_int8 = 0
