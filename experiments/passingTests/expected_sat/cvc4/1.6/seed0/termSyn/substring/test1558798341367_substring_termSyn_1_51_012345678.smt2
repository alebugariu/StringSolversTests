(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x71 (str.++ tmp_str18 tmp_str18)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x1301 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2684 (str.substr ?x118 ?x1301 ?x1327)))
 (= ?x2684 ?x71)))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = 
;Int tmp_int5 = 1
;String tmp_str0 = 
