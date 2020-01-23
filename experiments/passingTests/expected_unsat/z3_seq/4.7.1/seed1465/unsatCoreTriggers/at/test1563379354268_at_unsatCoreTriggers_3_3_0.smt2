(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun tmp_int1_fresh () Int)
(declare-fun offset () Int)
(declare-fun s () String)
(assert (! 
 (= (str.substr s offset tmp_int1_fresh) result) :named a1))
(assert (! 
 (= (str.to.int "1") tmp_int1_fresh) :named a2))
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
;tmp_int1_fresh = 1

;unsat core: a0 a1 a2 

;actual status: unsat
