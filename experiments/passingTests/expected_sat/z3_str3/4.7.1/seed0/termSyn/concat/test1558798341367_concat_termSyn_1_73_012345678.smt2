(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x89 (str.++ tmp_str16 tmp_str16)))
 (let ((?x2623 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1716 (str.++ ?x2623 ?x2623)))
 (= ?x1716 ?x89)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = i
;String tmp_str16 = 
