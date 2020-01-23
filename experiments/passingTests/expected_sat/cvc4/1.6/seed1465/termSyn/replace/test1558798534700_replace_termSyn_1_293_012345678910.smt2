(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x486 (str.++ tmp_str0 tmp_str24)))
 (let ((?x1478 (str.substr tmp_str0 tmp_int8 tmp_int8)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1280 (str.replace ?x2321 ?x2008 ?x1478)))
 (= ?x1280 ?x486)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str24 = 


;actual status: sat

;model:
;String tmp_str0 = 
;String tmp_str24 = 
;Int tmp_int8 = 0
