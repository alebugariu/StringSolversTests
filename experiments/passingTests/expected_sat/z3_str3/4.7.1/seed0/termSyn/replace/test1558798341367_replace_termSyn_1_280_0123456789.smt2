(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int22 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x2321 (str.at tmp_str0 tmp_int22)))
 (let ((?x2845 (str.at tmp_str0 tmp_int8)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.replace ?x130 ?x118 ?x2845) ?x2321))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_int22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_int22 = 0


;actual status: sat

;model:
;Int tmp_int22 = 0
;String tmp_str0 = o
;Int tmp_int8 = 0
