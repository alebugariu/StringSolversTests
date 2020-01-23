(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let (($x2157 (= tmp_str0 tmp_str18)))
 (let ((?x752 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let (($x2114 (str.prefixof ?x1783 ?x752)))
 (= $x2114 $x2157))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = d
;Int tmp_int5 = -1
;String tmp_str0 = a
