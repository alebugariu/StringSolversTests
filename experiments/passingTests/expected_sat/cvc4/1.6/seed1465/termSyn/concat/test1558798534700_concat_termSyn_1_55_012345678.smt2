(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1795 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1451 (str.++ ?x302 ?x1795)))
 (= ?x1451 (str.++ tmp_str0 tmp_str18))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = 
;Int tmp_int5 = 0
;String tmp_str0 = 
