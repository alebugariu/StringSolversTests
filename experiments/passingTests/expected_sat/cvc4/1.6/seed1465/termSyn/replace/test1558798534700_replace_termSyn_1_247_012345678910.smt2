(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2552 (str.replace tmp_str2 tmp_str2 tmp_str20)))
 (let ((?x1258 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x864 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x2646 (str.replace ?x1186 ?x864 ?x1258)))
 (= ?x2646 ?x2552)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str20 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str20 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str20 = 
;String tmp_str2 = 
