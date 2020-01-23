(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x664 (str.replace tmp_str0 tmp_str1 tmp_str2)))
 (= ?x664 "2""a""")))
(check-sat)

(get-value (tmp_str0 tmp_str1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str1 = 
;tmp_str2 = 2


;actual status: sat

;model:
;String tmp_str2 = 2""a""
;String tmp_str1 = 
;String tmp_str0 = 
