(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str20 () String)
(assert
 (let ((?x1355 (str.replace tmp_str0 tmp_str20 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1718 (str.replace ?x2008 ?x2008 ?x2008)))
 (= ?x1718 ?x1355)))))
(check-sat)

(get-value (tmp_str0 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;String tmp_str0 = 
