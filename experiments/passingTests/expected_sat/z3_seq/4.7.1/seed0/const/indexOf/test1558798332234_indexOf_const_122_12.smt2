(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x2045 (str.indexof "-1" tmp_str1 tmp_int2)))
 (= ?x2045 2)))
(check-sat)

(get-value (tmp_str1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_int2 = 2


;actual status: sat

;model:
;Int tmp_int2 = 2
;String tmp_str1 = 
