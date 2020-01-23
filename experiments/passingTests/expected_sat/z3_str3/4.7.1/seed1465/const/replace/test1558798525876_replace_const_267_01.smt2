(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x713 (str.replace tmp_str0 tmp_str1 "\x07")))
 (= ?x713 "\n")))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str1 = "a"


;actual status: sat

;model:
;String tmp_str1 = ap
;String tmp_str0 = \n
