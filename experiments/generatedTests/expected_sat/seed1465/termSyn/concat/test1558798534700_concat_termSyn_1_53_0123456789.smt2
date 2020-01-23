(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str18 () String)
(assert
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1864 (str.++ ?x302 ?x302)))
 (= ?x1864 (str.replace tmp_str0 tmp_str18 tmp_str0)))))
(check-sat)

(get-value (tmp_str0 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str18 = 


