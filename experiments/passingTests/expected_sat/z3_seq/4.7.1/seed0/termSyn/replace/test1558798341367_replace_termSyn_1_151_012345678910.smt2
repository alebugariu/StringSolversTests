(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x1696 (str.substr tmp_str0 tmp_int8 tmp_int8)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1188 (str.replace ?x118 ?x130 ?x1696)))
 (= ?x1188 (str.++ tmp_str0 tmp_str24)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str24 = 


;actual status: sat

;model:
;String tmp_str0 = \x00\x00\x00\x00\x00\x00\x00
;String tmp_str24 = 
;Int tmp_int8 = -1
