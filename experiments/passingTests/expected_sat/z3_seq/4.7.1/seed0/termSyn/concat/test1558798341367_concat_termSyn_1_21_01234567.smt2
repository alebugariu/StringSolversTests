(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1027 (str.replace tmp_str0 tmp_str14 tmp_str0)))
 (let ((?x2303 (str.at tmp_str0 tmp_int4)))
 (let ((?x2209 (str.++ tmp_str0 tmp_str0)))
 (let ((?x870 (str.++ ?x2209 ?x2303)))
 (= ?x870 ?x1027))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int4 = -1
;String tmp_str0 = \x00\x00
;String tmp_str14 = 
