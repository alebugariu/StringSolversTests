(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int17 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x279 (int.to.str tmp_int17)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1337 (str.substr ?x130 ?x1327 ?x1081)))
 (= ?x1337 ?x279)))))))
(check-sat)

(get-value (tmp_str0 tmp_int17 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int17 = -1


;actual status: sat

;model:
;String tmp_str0 = DvthgvamRn
;Int tmp_int17 = -39
