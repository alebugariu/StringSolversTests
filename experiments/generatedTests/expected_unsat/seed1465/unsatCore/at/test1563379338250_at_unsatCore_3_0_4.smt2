(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str2 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str3 () String)
(declare-fun result () String)
(declare-fun offset () Int)
(assert (! 
 (and (= (str.replace s tmp_str2 tmp_str3) s_fresh) (= (str.contains s tmp_str2) false)) :named a1))
(assert (! 
 (let ((?x377 (str.substr s_fresh offset 1)))
 (= ?x377 result)) :named a2))
(assert (! 
 (let ((?x7 (str.at s offset)))
 (let (($x9 (= ?x7 result)))
 (not $x9))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

