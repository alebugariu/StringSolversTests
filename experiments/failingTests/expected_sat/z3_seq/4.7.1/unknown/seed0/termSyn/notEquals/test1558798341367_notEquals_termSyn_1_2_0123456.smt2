(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let (($x2247 (str.contains tmp_str14 tmp_str0)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2680 (str.at tmp_str0 tmp_int1)))
 (let (($x2119 (= ?x2680 ?x1634)))
 (= $x2119 $x2247))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


;actual status: unknown
