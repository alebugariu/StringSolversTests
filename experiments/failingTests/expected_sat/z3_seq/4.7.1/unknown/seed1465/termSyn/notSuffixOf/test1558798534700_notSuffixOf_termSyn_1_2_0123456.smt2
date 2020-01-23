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
 (let ((?x1707 (str.at tmp_str0 tmp_int4)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let (($x1716 (str.suffixof ?x2008 ?x1707)))
 (= $x1716 $x2031))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = 


;actual status: unknown
