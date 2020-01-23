(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1505 (str.substr tmp_str0 tmp_int16 tmp_int16)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1088 (str.substr ?x2008 ?x1907 ?x1907)))
 (= ?x1088 ?x1505))))))
(check-sat)

(get-value (tmp_str0 tmp_int16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int16 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int16 = 0
