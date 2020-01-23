(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (let ((?x2776 (str.replace tmp_str0 tmp_str0 tmp_str18)))
 (let ((?x2787 (str.indexof tmp_str0 tmp_str0 tmp_int7)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x580 (str.substr ?x2008 ?x1907 ?x2787)))
 (= ?x580 ?x2776)))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = 
;String tmp_str0 = 0\xb36
;Int tmp_int7 = 620
