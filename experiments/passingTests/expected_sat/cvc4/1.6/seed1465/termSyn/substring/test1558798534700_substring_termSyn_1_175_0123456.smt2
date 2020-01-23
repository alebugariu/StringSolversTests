(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int17 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x749 (int.to.str tmp_int17)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2190 (str.substr ?x2321 ?x1907 ?x1907)))
 (= ?x2190 ?x749))))))
(check-sat)

(get-value (tmp_str0 tmp_int17 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int17 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int17 = -1
