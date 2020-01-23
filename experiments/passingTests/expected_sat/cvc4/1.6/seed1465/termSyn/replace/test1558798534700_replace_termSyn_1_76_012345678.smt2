(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x2227 (str.replace ?x816 (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int1))))
 (= ?x2227 (str.++ tmp_str18 tmp_str18)))))
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
