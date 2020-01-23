(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x747 (int.to.str tmp_int3)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2622 (str.replace ?x2008 ?x747 ?x747)))
 (= ?x2622 (str.replace tmp_str0 tmp_str16 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int3 = 0
;String tmp_str0 = \x00
;String tmp_str16 = 
