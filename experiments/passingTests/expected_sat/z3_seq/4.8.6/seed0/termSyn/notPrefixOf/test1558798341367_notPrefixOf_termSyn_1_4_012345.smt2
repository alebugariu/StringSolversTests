(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let (($x1794 (str.contains tmp_str0 tmp_str12)))
 (= (str.prefixof (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3)) $x1794)))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str12 = -1


;actual status: sat
;((tmp_str0 "\x00")
; (tmp_int3 0)
; (tmp_str12 "\x00\x00"))

;model:
;Int tmp_int3 = 0
;String tmp_str0 = \x00
;String tmp_str12 = \x00\x00
