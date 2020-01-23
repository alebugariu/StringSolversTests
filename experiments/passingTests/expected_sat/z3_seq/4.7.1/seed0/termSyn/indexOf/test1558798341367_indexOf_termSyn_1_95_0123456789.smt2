(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x975 (str.indexof tmp_str0 tmp_str0 tmp_int18)))
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x2052 ?x1634 ?x229) ?x975))))))
(check-sat)

(get-value (tmp_str0 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int18 = -1


;actual status: sat

;model:
;String tmp_str0 = 4 \x00\x00
;Int tmp_int18 = -2
