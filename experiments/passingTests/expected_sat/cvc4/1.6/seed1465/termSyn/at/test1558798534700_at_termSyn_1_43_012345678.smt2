(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.at ?x302 (str.indexof tmp_str0 tmp_str0 tmp_int6)) (str.at tmp_str0 tmp_int6))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: sat

;model:
;Int tmp_int6 = 1
;String tmp_str0 = 
