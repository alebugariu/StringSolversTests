(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x983 (str.contains tmp_str0 tmp_str0)))
 (let ((?x2270 (int.to.str tmp_int4)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let (($x2120 (str.contains ?x1783 ?x2270)))
 (= $x2120 $x983))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat

;model:
;Int tmp_int4 = 2
;String tmp_str0 = 2
