(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x1185 (str.contains tmp_str0 tmp_str14)))
 (let ((?x2270 (int.to.str tmp_int4)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (= ?x1783 ?x2270) $x1185)))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = -1


;actual status: unknown
