(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x381 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x390 (str.len tmp_str2)))
 (let ((?x2564 (str.++ tmp_str2 tmp_str2)))
 (let ((?x348 (int.to.str tmp_int0)))
 (= (str.indexof ?x348 ?x2564 ?x390) ?x381))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = 0
;String tmp_str2 = 
