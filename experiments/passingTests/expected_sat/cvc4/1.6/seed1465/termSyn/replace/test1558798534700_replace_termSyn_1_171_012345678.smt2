(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x305 (str.at tmp_str2 tmp_int0)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (= (str.replace ?x1186 ?x305 (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.at tmp_str2 tmp_int20)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_int20 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_int20 = 0


;actual status: sat

;model:
;Int tmp_int20 = 0
;Int tmp_int0 = -1
;String tmp_str2 = 
