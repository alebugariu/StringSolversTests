(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let (($x1672 (str.contains tmp_str0 tmp_str18)))
 (let ((?x1959 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.prefixof ?x2052 ?x1959) $x1672)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str18 = -1


;actual status: sat

;model:
;String tmp_str18 = AA
;Int tmp_int5 = -1
;String tmp_str0 = A
