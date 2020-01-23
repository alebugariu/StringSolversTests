(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1823 (int.to.str tmp_int4)))
 (let ((?x1707 (str.at tmp_str0 tmp_int4)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2809 (str.replace ?x2008 ?x1707 ?x1823)))
 (= ?x2809 (str.replace tmp_str0 tmp_str18 tmp_str0)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str18 = 


