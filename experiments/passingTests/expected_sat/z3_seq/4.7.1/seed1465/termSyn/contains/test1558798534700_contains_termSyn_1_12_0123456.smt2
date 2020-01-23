(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x983 (str.contains tmp_str0 tmp_str0)))
 (let ((?x1707 (str.at tmp_str0 tmp_int4)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (= (str.contains ?x2008 ?x1707) $x983)))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat

;model:
;Int tmp_int4 = 0
;String tmp_str0 = \x00\x00\x00
