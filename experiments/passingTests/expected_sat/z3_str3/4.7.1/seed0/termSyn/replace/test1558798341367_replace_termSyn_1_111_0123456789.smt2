(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1762 (str.replace tmp_str0 tmp_str20 tmp_str0)))
 (let ((?x2693 (str.at tmp_str0 tmp_int4)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x815 (str.replace ?x118 ?x2693 ?x2693)))
 (= ?x815 ?x1762))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = aad
;Int tmp_int4 = 0
;String tmp_str0 = 
