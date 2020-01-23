(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int22 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (= (str.replace ?x2321 ?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.at tmp_str0 tmp_int22))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_int22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_int22 = 0


;actual status: sat

;model:
;Int tmp_int1 = 0
;Int tmp_int22 = 0
;String tmp_str0 = w
