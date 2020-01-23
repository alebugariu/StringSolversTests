(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x188 (str.++ tmp_str0 tmp_str1)))
 (= ?x188 """a""\n")))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str1 = \n


;actual status: sat

;model:
;String tmp_str1 = ""a""\n
;String tmp_str0 = 
