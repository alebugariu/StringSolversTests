(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun s1 () String)
(assert (! 
 (let ((?x181 (str.len t)))
 (let (($x982 (= ?x181 1)))
 (let ((?x979 (str.at t 0)))
 (let (($x981 (= ?x979 t_fresh)))
 (and $x981 $x982))))) :named a1))
(assert (! 
 (= (str.++ (str.++ s1 t_fresh) s3) s) :named a2))
(assert (! 
 (let (($x322 (str.contains s t)))
 (let (($x323 (= $x322 true)))
 (not $x323))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;t_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
