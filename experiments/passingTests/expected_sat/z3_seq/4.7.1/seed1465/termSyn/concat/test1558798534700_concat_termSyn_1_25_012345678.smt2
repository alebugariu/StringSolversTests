(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x942 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x512 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2533 (str.++ ?x512 ?x942)))
 (= ?x2533 (str.replace tmp_str0 tmp_str16 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int4 = 2
;String tmp_str0 = \x00
;String tmp_str16 = 
