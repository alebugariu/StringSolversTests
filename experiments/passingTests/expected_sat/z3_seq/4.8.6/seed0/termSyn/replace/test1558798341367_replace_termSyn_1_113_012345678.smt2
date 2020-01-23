(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x2209 (str.replace tmp_str0 tmp_str18 tmp_str0)))
 (let ((?x1959 (int.to.str tmp_int4)))
 (let ((?x2693 (str.at tmp_str0 tmp_int4)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1845 (str.replace ?x118 ?x2693 ?x1959)))
 (= ?x1845 ?x2209)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str18 = 


;actual status: sat
;((tmp_str0 "\x00\x00\x00")
; (tmp_int4 (- 1))
; (tmp_str18 ""))

;model:
;String tmp_str18 = 
;Int tmp_int4 = -1
;String tmp_str0 = \x00\x00\x00
