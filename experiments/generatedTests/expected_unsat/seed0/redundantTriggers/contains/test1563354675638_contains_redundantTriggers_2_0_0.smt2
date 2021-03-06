(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s1 () String)
(declare-fun s1_fresh () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(assert (! 
 (let ((?x128 (str.len s1)))
 (let (($x1042 (= ?x128 1)))
 (let ((?x1040 (str.at s1 0)))
 (let (($x1041 (= ?x1040 s1_fresh)))
 (and $x1041 $x1042))))) :named a1))
(assert (! 
 (= (str.++ (str.++ s1_fresh t) s3) s) :named a2))
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
;s1_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 

