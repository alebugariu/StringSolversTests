(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int17 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2517 (str.substr ?x2321 ?x545 ?x545)))
 (= ?x2517 (int.to.str tmp_int17))))))
(check-sat)

(get-value (tmp_str0 tmp_int17 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int17 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int17 = -1
