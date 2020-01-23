(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x644 (str.++ tmp_str0 tmp_str18)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2823 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2709 (str.++ ?x2823 ?x302)))
 (= ?x2709 ?x644))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str18 = 
;String tmp_str0 = 
