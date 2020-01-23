(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3_fresh () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun s3 () String)
(assert (! 
 (= (str.++ (str.++ s1 t) s3_fresh) s) :named a1))
(assert (! 
 (let ((?x1094 (str.len s3)))
 (let (($x1095 (= ?x1094 1)))
 (let ((?x1091 (str.at s3 0)))
 (let (($x1093 (= ?x1091 s3_fresh)))
 (and $x1093 $x1095))))) :named a2))
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
;s3_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 

;actual status: incorrect_unsat_core
;(
;a1
;a2
;a0
;)
