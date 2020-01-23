(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2822 (str.indexof tmp_str0 tmp_str1 tmp_int2)))
 (= ?x2822 2)))
(check-sat)

(get-value (tmp_str0 tmp_str1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str1 = 
;tmp_int2 = 2


;actual status: sat

;model:
;Int tmp_int2 = 0
;String tmp_str1 = a0C
;String tmp_str0 = aUa0Caa0Caaaaq
