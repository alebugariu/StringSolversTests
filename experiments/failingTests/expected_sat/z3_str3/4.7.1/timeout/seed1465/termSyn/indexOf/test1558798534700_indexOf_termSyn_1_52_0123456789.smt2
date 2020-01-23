(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x1747 (str.indexof tmp_str0 tmp_str0 tmp_int4)))
 (let ((?x2548 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x305 (str.indexof ?x2008 ?x2548 ?x1747)))
 (= ?x305 ?x1907)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: timeout
