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
 (let ((?x1081 (int.to.str tmp_int4)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (= ?x2052 ?x1081) $x675)))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = -1


;actual status: sat
;((tmp_str0 "")
; (tmp_int4 0)
; (tmp_str14 "\x00"))

;model:
;Int tmp_int4 = 0
;String tmp_str0 = 
;String tmp_str14 = \x00
