(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int24 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x309 (str.at tmp_str0 tmp_int24)))
 (let ((?x1696 (str.substr tmp_str0 tmp_int8 tmp_int8)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.replace ?x130 ?x118 ?x1696) ?x309))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_int24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_int24 = 0


;actual status: sat

;model:
;String tmp_str0 = 1
;Int tmp_int8 = 2
;Int tmp_int24 = 0
