(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1327 (str.++ tmp_str0 tmp_str16)))
 (let ((?x277 (str.at tmp_str0 tmp_int5)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1043 (str.++ ?x2060 ?x277)))
 (= ?x1043 ?x1327))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int5 = 2
;String tmp_str0 = aliad
;String tmp_str16 = i
