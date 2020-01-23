(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x1355 (str.replace tmp_str0 tmp_str20 tmp_str0)))
 (let ((?x1459 (str.substr tmp_str0 tmp_int3 tmp_int3)))
 (let ((?x747 (int.to.str tmp_int3)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1424 (str.replace ?x2008 ?x747 ?x1459)))
 (= ?x1424 ?x1355)))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str20 = 


;actual status: not_implemented
