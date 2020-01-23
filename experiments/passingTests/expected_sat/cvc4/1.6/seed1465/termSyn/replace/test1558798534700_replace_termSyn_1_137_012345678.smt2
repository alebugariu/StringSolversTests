(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x1896 (str.replace tmp_str0 tmp_str18 tmp_str0)))
 (let ((?x2192 (str.at tmp_str0 tmp_int3)))
 (let ((?x747 (int.to.str tmp_int3)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x879 (str.replace ?x2008 ?x747 ?x2192)))
 (= ?x879 ?x1896)))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = 
;Int tmp_int3 = -1
;String tmp_str0 = 
