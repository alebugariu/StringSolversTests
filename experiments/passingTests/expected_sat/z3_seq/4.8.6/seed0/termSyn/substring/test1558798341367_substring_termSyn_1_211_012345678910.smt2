(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x563 (str.replace tmp_str0 tmp_str0 tmp_str20)))
 (let ((?x2777 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1603 (str.substr ?x2040 ?x1081 ?x2777)))
 (= ?x1603 ?x563)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str20 = 


;actual status: sat
;((tmp_str0 "\x18286805224020\x1C\x10b\x8c,\xa2")
; (tmp_int1 (- 2))
; (tmp_str20 ""))

;model:
;Int tmp_int1 = -2
;String tmp_str20 = 
;String tmp_str0 = \x18286805224020\x1C\x10b\x8c,\xa2
