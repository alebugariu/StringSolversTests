(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (= (str.indexof ?x2008 ?x1783 ?x1907) (str.indexof tmp_str0 tmp_str0 tmp_int18))))))
(check-sat)

(get-value (tmp_str0 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int18 = -1


