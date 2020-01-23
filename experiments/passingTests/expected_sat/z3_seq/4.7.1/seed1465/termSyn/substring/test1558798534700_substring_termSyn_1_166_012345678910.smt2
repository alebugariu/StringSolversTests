(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x209 (str.replace tmp_str0 tmp_str0 tmp_str20)))
 (let ((?x2532 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1904 (str.substr ?x2321 ?x1907 ?x2532)))
 (= ?x1904 ?x209)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;String tmp_str0 = 
;Int tmp_int8 = -2
