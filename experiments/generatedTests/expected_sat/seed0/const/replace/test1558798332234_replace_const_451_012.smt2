(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1586 (str.replace tmp_str0 tmp_str1 tmp_str2)))
 (= ?x1586 "\x072")))
(check-sat)

(get-value (tmp_str0 tmp_str1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_str1 = 
;tmp_str2 = 


