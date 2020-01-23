(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x675 (str.contains tmp_str0 tmp_str14)))
 (let ((?x735 (str.at tmp_str0 tmp_int4)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (= (str.prefixof ?x1634 ?x735) $x675)))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = -1


;actual status: sat

;model:
;Int tmp_int4 = -1
;String tmp_str0 = \x00
;String tmp_str14 = !0!
