(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2231 (str.replace tmp_str0 tmp_str0 tmp_str24)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2647 (str.replace ?x1363 ?x1363 ?x1363)))
 (= ?x2647 ?x2231)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str24 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = 
;String tmp_str24 = 
