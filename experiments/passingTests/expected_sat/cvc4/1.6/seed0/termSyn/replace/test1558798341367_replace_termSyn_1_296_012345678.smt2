(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x903 (str.++ tmp_str0 tmp_str20)))
 (let ((?x628 (str.at tmp_str0 tmp_int4)))
 (let ((?x1313 (int.to.str tmp_int4)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1727 (str.replace ?x130 ?x1313 ?x628)))
 (= ?x1727 ?x903)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;Int tmp_int4 = -1
;String tmp_str0 = 
