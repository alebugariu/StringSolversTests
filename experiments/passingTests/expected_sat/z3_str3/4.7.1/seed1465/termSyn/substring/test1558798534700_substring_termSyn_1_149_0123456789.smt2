(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2555 (str.++ tmp_str20 tmp_str20)))
 (let ((?x2532 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x679 (str.substr ?x2321 ?x545 ?x2532)))
 (= ?x679 ?x2555)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;String tmp_str0 = oy
;Int tmp_int8 = 0
