(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let (($x1897 (str.contains tmp_str0 tmp_str12)))
 (= (str.suffixof (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3)) $x1897)))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str12 = -1


;actual status: sat

;model:
;Int tmp_int3 = -1
;String tmp_str0 = aaa
;String tmp_str12 = aaaa
