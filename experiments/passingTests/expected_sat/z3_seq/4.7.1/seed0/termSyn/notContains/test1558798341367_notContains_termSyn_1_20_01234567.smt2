(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let (($x1247 (str.contains tmp_str0 tmp_str16)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2753 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (= (str.contains ?x2753 ?x1634) $x1247)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = -1


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = \x00
;String tmp_str16 = !0!
