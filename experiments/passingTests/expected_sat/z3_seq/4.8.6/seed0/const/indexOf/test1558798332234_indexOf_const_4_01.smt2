(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1762 (str.indexof tmp_str0 tmp_str1 0)))
 (= ?x1762 (- 1))))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str1 = "a"


;actual status: sat
;((tmp_str0 "")
; (tmp_str1 "\x00"))

;model:
;String tmp_str1 = \x00
;String tmp_str0 = 
