(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1311 (str.len tmp_str2)))
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x1886 (str.at ?x309 ?x1311)))
 (= ?x1886 (str.replace tmp_str2 tmp_str2 tmp_str8))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str8 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str8 = 


;actual status: sat

;model:
;String tmp_str8 = 
;Int tmp_int0 = -1
;String tmp_str2 = 
