(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1675 (str.at tmp_str0 tmp_int16)))
 (let ((?x1625 (str.at tmp_str0 tmp_int5)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.++ ?x302 ?x1625) ?x1675)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_int16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int16 = 0


;actual status: sat

;model:
;Int tmp_int5 = -9590
;String tmp_str0 = 
;Int tmp_int16 = -617
