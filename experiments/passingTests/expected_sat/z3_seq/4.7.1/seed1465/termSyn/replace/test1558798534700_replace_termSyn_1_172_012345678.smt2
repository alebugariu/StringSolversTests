(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x864 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x305 (str.at tmp_str2 tmp_int0)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x234 (str.replace ?x1186 ?x305 ?x864)))
 (= ?x234 (str.++ tmp_str2 tmp_str20)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str20 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str20 = 


;actual status: sat

;model:
;Int tmp_int0 = 2
;String tmp_str20 = 2
;String tmp_str2 = 
