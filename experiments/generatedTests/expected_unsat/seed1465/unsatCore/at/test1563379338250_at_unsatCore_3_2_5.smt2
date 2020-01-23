(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result_fresh () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun tmp_str2 () String)
(declare-fun result () String)
(declare-fun tmp_str3 () String)
(assert (! 
 (let ((?x12 (str.substr s offset 1)))
 (= ?x12 result_fresh)) :named a1))
(assert (! 
 (let ((?x423 (str.replace result tmp_str2 tmp_str3)))
 (let (($x424 (= ?x423 result_fresh)))
 (and $x424 (= (str.indexof result tmp_str2 0) (- 1))))) :named a2))
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
;result_fresh = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 

