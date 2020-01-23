(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2340 (str.indexof tmp_str0 tmp_str0 tmp_int3)))
 (let ((?x816 (int.to.str tmp_int3)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x40 (str.indexof ?x2008 ?x816 ?x2340)))
 (= ?x40 ?x1907)))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1


;actual status: timeout
