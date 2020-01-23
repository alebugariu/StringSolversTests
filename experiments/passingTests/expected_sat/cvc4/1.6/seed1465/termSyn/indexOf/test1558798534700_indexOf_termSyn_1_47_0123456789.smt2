(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int9 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x1258 (str.indexof tmp_str0 tmp_str0 tmp_int9)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2646 (str.indexof ?x2008 ?x1783 ?x1258)))
 (= ?x2646 ?x1907)))))))
(check-sat)

(get-value (tmp_str0 tmp_int9 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int9 = 1
