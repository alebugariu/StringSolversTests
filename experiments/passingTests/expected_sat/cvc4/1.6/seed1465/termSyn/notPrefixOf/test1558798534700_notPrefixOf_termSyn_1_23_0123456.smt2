(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x2031 (str.contains tmp_str14 tmp_str0)))
 (let ((?x2270 (int.to.str tmp_int4)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let (($x413 (str.prefixof ?x1783 ?x2270)))
 (= $x413 $x2031))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int4 = -1
;String tmp_str0 = A
;String tmp_str14 = 
