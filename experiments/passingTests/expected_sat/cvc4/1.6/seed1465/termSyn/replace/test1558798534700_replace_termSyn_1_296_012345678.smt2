(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1153 (str.++ tmp_str0 tmp_str20)))
 (let ((?x1707 (str.at tmp_str0 tmp_int4)))
 (let ((?x1823 (int.to.str tmp_int4)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2255 (str.replace ?x2321 ?x1823 ?x1707)))
 (= ?x2255 ?x1153)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;Int tmp_int4 = -1
;String tmp_str0 = 
