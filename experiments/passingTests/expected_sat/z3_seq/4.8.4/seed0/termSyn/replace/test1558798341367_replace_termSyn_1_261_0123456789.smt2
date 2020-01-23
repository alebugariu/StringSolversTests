(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int22 () Int)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x878 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1071 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (= (str.replace ?x229 ?x1071 ?x878) (str.at tmp_str2 tmp_int22))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_int22 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_int22 = 0


;actual status: sat

;model:
;Int tmp_int0 = -1
;Int tmp_int22 = -7720
;String tmp_str2 = 
