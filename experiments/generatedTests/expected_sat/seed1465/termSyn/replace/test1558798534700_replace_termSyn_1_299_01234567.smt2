(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1823 (int.to.str tmp_int4)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1918 (str.replace ?x2321 ?x1823 ?x1823)))
 (= ?x1918 (str.++ tmp_str0 tmp_str18))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str18 = 


