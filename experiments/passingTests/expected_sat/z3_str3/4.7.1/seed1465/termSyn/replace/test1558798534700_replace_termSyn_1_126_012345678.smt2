(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int6 () Int)
(assert
 (let ((?x2564 (int.to.str tmp_int6)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1083 (str.replace ?x2008 ?x2008 ?x2564)))
 (= ?x1083 (str.replace tmp_str0 tmp_str0 tmp_str16))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int6 = 3
;String tmp_str0 = lo
;String tmp_str16 = 3
