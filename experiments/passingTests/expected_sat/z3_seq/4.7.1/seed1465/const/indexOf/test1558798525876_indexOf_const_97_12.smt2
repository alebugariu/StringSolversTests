(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x2433 (str.indexof "\n" tmp_str1 tmp_int2)))
 (= ?x2433 0)))
(check-sat)

(get-value (tmp_str1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_int2 = 0


;actual status: sat

;model:
;Int tmp_int2 = 0
;String tmp_str1 = \n
