(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x849 (str.substr ?x1363 ?x1907 ?x545)))
 (= ?x849 ?x1363))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = -4823
;String tmp_str0 = zM
