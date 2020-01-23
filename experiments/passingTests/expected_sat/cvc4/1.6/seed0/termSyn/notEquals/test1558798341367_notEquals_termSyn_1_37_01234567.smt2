(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(assert
 (let (($x1015 (= tmp_str0 tmp_str16)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let (($x2178 (= ?x2052 ?x1634)))
 (= $x2178 $x1015))))))
(check-sat)

(get-value (tmp_str0 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str16 = 


;actual status: sat

;model:
;String tmp_str0 = A
;String tmp_str16 = 
