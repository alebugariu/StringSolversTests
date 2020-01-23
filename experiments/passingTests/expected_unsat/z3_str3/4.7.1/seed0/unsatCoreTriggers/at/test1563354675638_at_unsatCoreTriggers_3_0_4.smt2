(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun offset () Int)
(declare-fun s_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun s () String)
(declare-fun tmp_str3 () String)
(assert (! 
 (let ((?x385 (str.substr s_fresh offset 1)))
 (= ?x385 result)) :named a1))
(assert (! 
 (and (= (str.replace s tmp_str2 tmp_str3) s_fresh) (= (str.contains s tmp_str2) false)) :named a2))
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
;s_fresh = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
