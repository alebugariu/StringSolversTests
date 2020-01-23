(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x231 (str.at tmp_str2 tmp_int0)))
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x2105 (str.++ ?x309 ?x231)))
 (= ?x2105 (str.replace tmp_str2 tmp_str2 tmp_str10))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str10 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str10 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
;String tmp_str10 = 
