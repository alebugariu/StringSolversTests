(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x2295 (str.indexof """a""" tmp_str1 tmp_int2)))
 (= ?x2295 (- 1))))
(check-sat)

(get-value (tmp_str1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_int2 = -1


;actual status: sat

;model:
;Int tmp_int2 = -1
;String tmp_str1 = C
