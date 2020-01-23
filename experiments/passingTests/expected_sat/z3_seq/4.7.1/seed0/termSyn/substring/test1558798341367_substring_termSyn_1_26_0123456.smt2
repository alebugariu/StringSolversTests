(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x385 (str.++ tmp_str14 tmp_str14)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x1007 (str.substr ?x972 ?x1327 ?x1081)))
 (= ?x1007 ?x385)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int1 = -7720
;String tmp_str0 = \x00\x00
;String tmp_str14 = 
