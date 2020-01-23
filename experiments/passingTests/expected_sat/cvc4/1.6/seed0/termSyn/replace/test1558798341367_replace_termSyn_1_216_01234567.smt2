(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x229 (int.to.str tmp_int0)))
 (= (str.replace ?x229 ?x229 (str.replace tmp_str4 tmp_str4 tmp_str4)) (str.at tmp_str4 tmp_int18))))
(check-sat)

(get-value (tmp_int0 tmp_str4 tmp_int18 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;tmp_int18 = 0


;actual status: sat

;model:
;Int tmp_int0 = 0
;String tmp_str4 = 
;Int tmp_int18 = 0
