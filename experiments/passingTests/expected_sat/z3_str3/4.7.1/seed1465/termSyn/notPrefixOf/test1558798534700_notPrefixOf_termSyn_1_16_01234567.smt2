(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let (($x1084 (str.contains tmp_str0 tmp_str16)))
 (let ((?x52 (str.at tmp_str0 tmp_int5)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.prefixof ?x1783 ?x52) $x1084)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str16 = -1


;actual status: sat

;model:
;Int tmp_int5 = 2
;String tmp_str0 = asfL
;String tmp_str16 = aB
