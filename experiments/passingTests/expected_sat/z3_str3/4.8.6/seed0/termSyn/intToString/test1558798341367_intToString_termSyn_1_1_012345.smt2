(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1933 (str.++ tmp_str8 tmp_str8)))
 (let ((?x2022 (str.indexof tmp_str0 tmp_str0 tmp_int2)))
 (let ((?x2123 (int.to.str ?x2022)))
 (= ?x2123 ?x1933)))))
(check-sat)

(get-value (tmp_str0 tmp_int2 tmp_str8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = -1
;tmp_str8 = 


;actual status: sat
;((tmp_str0 "kl")
; (tmp_int2 (- 7720))
; (tmp_str8 ""))

;model:
;String tmp_str8 = 
;Int tmp_int2 = -7720
;String tmp_str0 = kl
