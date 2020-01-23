(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1146 (str.to.int tmp_str4)))
 (let ((?x2654 (str.len tmp_str4)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let ((?x2102 (str.indexof ?x348 ?x348 ?x2654)))
 (= ?x2102 ?x1146))))))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


;actual status: sat

;model:
;Int tmp_int0 = 0
;String tmp_str4 = A
