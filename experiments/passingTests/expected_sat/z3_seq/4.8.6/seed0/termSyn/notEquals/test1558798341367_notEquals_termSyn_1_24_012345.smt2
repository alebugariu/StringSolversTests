(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x823 (str.contains tmp_str2 tmp_str12)))
 (= (= (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) $x823)))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = -1


;actual status: sat
;((tmp_int0 0)
; (tmp_str2 "")
; (tmp_str12 "\x00"))

;model:
;Int tmp_int0 = 0
;String tmp_str2 = 
;String tmp_str12 = \x00
