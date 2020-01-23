(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1707 (str.at tmp_str0 tmp_int4)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x618 (str.replace ?x2008 ?x1707 ?x1707)))
 (= ?x618 (str.replace tmp_str0 tmp_str20 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;Int tmp_int4 = 0
;String tmp_str0 = \x00
