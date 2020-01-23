(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x158 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1363 (str.indexof ?x2008 ?x2008 ?x158)))
 (= ?x1363 ?x1907))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int8 = 1
