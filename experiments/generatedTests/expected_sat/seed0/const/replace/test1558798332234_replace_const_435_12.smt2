(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x238 (str.replace "0" tmp_str1 tmp_str2)))
 (= ?x238 "\x07")))
(check-sat)

(get-value (tmp_str1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str1 = 0
;tmp_str2 = 


