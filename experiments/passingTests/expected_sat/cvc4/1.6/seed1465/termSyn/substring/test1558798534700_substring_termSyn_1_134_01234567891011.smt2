(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x729 (str.++ tmp_str24 tmp_str24)))
 (let ((?x2007 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2480 (str.substr ?x2321 ?x2007 ?x2007)))
 (= ?x2480 ?x729))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str24 = 


;actual status: sat

;model:
;Int tmp_int6 = 1
;String tmp_str0 = 
;String tmp_str24 = 
