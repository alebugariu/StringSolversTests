(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t_fresh () String)
(declare-fun s1 () String)
(declare-fun t () String)
(assert (! 
 (= (str.++ (str.++ s1 t_fresh) s3) s) :named a1))
(assert (! 
 (let ((?x181 (str.len t)))
 (let (($x993 (= ?x181 1)))
 (let ((?x991 (str.at t 0)))
 (let (($x992 (= ?x991 t_fresh)))
 (and $x992 $x993))))) :named a2))
(assert (! 
 (let (($x326 (str.contains s t)))
 (let (($x327 (= $x326 true)))
 (not $x327))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;t_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

