(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (= (str.suffixof (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3)) (= tmp_str0 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str12 = 
