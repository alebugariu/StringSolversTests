(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x455 (str.substr tmp_str0 tmp_int3 tmp_int3)))
 (let ((?x1845 (int.to.str tmp_int3)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2679 (str.replace ?x118 ?x1845 ?x455)))
 (= ?x2679 (str.replace tmp_str0 tmp_str20 tmp_str0)))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = aD
;Int tmp_int3 = 44
;String tmp_str0 = 44
