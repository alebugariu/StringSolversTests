(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int10 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2651 (str.indexof tmp_str0 tmp_str0 tmp_int10)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x1783 ?x1783 ?x2651) ?x2651))))
(check-sat)

(get-value (tmp_str0 tmp_int10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int10 = -1


;actual status: sat

;model:
;Int tmp_int10 = 1
;String tmp_str0 = 
