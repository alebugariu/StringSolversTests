(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1102 (str.++ tmp_str0 tmp_str22)))
 (let ((?x2513 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x1823 (int.to.str tmp_int4)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x398 (str.replace ?x2321 ?x1823 ?x2513)))
 (= ?x398 ?x1102)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str22 = 


;actual status: not_implemented
