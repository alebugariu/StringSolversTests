(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2430 (int.to.str tmp_int1)))
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (let ((?x2614 (str.replace ?x2321 ?x2321 ?x2430)))
 (= ?x2614 (str.replace tmp_str0 tmp_str0 tmp_str16))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


;actual status: sat
;((tmp_str0 "\x00")
; (tmp_int1 (- 2))
; (tmp_str16 ""))

;model:
;Int tmp_int1 = -2
;String tmp_str0 = \x00
;String tmp_str16 = 
