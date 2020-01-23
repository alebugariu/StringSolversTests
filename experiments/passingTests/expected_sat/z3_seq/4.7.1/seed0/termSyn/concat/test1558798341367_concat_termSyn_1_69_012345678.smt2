(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x19 (str.at tmp_str0 tmp_int18)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2623 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (= (str.++ ?x2623 ?x2060) ?x19)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_int18 = 0


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = 
;Int tmp_int18 = -7720
