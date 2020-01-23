(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x628 (str.at tmp_str0 tmp_int4)))
 (let ((?x975 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x108 (str.replace ?x118 ?x975 ?x628)))
 (= ?x108 (str.replace tmp_str0 tmp_str22 tmp_str0)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str22 = 


;actual status: sat
;((tmp_str0 "")
; (tmp_int4 (- 1))
; (tmp_str22 "\x00"))

;model:
;Int tmp_int4 = -1
;String tmp_str0 = 
;String tmp_str22 = \x00
