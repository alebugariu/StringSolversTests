(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2149 (str.++ tmp_str18 tmp_str18)))
 (let ((?x305 (str.at tmp_str2 tmp_int0)))
 (let ((?x864 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x1170 (str.replace ?x1186 ?x864 ?x305)))
 (= ?x1170 ?x2149)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str18 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str18 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str18 = 
;String tmp_str2 = 
