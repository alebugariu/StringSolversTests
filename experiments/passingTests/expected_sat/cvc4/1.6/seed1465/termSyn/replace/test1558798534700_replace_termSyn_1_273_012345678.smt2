(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1153 (str.++ tmp_str0 tmp_str20)))
 (let ((?x503 (int.to.str tmp_int5)))
 (let ((?x2497 (str.at tmp_str0 tmp_int5)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1264 (str.replace ?x2321 ?x2497 ?x503)))
 (= ?x1264 ?x1153)))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str20 = 


;actual status: sat

;model:
;Int tmp_int5 = -1
;String tmp_str20 = 
;String tmp_str0 = 
