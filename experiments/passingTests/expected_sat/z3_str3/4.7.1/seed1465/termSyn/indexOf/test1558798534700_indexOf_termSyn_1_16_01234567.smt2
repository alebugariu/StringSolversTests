(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x40 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x836 (int.to.str tmp_int1)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (= (str.indexof ?x816 ?x836 ?x1907) ?x40))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = 0
