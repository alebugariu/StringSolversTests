(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int22 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (= (str.replace ?x2008 ?x2008 ?x2321) (str.at tmp_str0 tmp_int22)))))
(check-sat)

(get-value (tmp_str0 tmp_int22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int22 = 0


;actual status: sat

;model:
;Int tmp_int22 = 0
;String tmp_str0 = 
