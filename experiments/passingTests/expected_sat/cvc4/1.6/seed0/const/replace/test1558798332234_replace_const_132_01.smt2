(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x729 (str.replace tmp_str0 tmp_str1 "\n")))
 (= ?x729 "\na")))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str1 = 


;actual status: sat

;model:
;String tmp_str1 = 
;String tmp_str0 = a
