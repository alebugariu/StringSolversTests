(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int26 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1238 (str.at tmp_str0 tmp_int26)))
 (let ((?x869 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.replace ?x2321 ?x869 ?x869) ?x1238)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_int26 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int26 = 0


;actual status: sat

;model:
;Int tmp_int5 = 0
;String tmp_str0 = 
;Int tmp_int26 = -1
