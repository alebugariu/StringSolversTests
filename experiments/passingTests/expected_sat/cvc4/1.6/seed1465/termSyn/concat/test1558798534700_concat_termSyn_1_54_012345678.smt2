(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1795 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.++ ?x302 ?x1795) (str.at tmp_str0 tmp_int18)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int18 = 0


;actual status: sat

;model:
;Int tmp_int5 = 0
;String tmp_str0 = 
;Int tmp_int18 = 0
