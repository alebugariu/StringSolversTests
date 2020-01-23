(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2682 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2777 (str.at ?x2060 ?x2682)))
 (= ?x2777 (str.substr tmp_str0 tmp_int6 tmp_int6))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: sat
;((tmp_str0 "Qy")
; (tmp_int6 (- 7720)))

;model:
;Int tmp_int6 = -7720
;String tmp_str0 = Qy
