(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1258 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x1237 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x2727 (str.len tmp_str2)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x1288 (str.substr ?x1186 ?x2727 ?x1237)))
 (= ?x1288 ?x1258)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
