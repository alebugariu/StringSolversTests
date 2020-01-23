(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2149 (str.++ tmp_str18 tmp_str18)))
 (let ((?x836 (int.to.str tmp_int1)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1127 (str.replace ?x1363 ?x2008 ?x836)))
 (= ?x1127 ?x2149)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str18 = 
;String tmp_str0 = 
