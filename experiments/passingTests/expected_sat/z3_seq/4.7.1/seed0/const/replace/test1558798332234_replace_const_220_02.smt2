(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x915 (str.replace tmp_str0 "\x07" tmp_str2)))
 (= ?x915 "\n")))
(check-sat)

(get-value (tmp_str0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = \n


;actual status: sat

;model:
;String tmp_str2 = \n
;String tmp_str0 = \x07
