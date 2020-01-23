(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let (($x134 (= tmp_str0 tmp_str12)))
 (let ((?x816 (int.to.str tmp_int3)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let (($x411 (str.prefixof ?x2008 ?x816)))
 (= $x411 $x134))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int3 = 8
;String tmp_str0 = \x00\x00
;String tmp_str12 = !0!
