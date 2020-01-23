(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int6 () Int)
(assert
 (let ((?x2682 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2777 (str.at ?x2060 ?x2682)))
 (= ?x2777 (str.replace tmp_str0 tmp_str0 tmp_str16))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int6 = 1
;String tmp_str0 = 
;String tmp_str16 = 
