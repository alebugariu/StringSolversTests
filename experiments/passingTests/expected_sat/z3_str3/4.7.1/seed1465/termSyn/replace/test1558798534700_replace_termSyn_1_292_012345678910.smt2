(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int24 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x356 (str.at tmp_str0 tmp_int24)))
 (let ((?x1478 (str.substr tmp_str0 tmp_int8 tmp_int8)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.replace ?x2321 ?x2008 ?x1478) ?x356))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_int24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_int24 = 0


;actual status: sat

;model:
;String tmp_str0 = x
;Int tmp_int8 = 2
;Int tmp_int24 = 0
